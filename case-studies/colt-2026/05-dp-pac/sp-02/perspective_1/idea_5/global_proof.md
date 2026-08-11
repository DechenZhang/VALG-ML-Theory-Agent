# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_1/idea_5`
- Global producer attempt: 1 under sketch attempt 1
- Reviewed sketch: `perspective_1/idea_5/proof_sketch.md`, headed `# Proof Sketch`, with `Sketch attempt: 1` and six fixed steps `step_001`--`step_006`
- Reviewed sketch review: `perspective_1/idea_5/proof_sketch_review.md`, headed `# Proof Sketch Review`, reviewing the same branch and sketch attempt
- Review outcome: `Sketch Review Status = ACCEPTED`, `Sketch Viability Score = 9`, `Smallest Retry Target = None`, and `Required Repair Bundle = None`
- Binding setting: `perspective_1/idea_5/setting.md`; the branch is in exact-goal mode for a conditional universal-nonexistence theorem

## Status

PARTIAL_BLOCKED

The accepted roadmap has no missing theorem-level bridge, unsupported generated output, or non-`step-local` obligation. The six mathematical steps still require independently accepted local proofs, so this diagnostic does not use `COMPLETE_DRAFT`.

## Attempted Theorem Claim

**Goal mode:** exact-goal mode.

Assume `assump:polynomial-global-stability`: there is one universal integer (a\geq1) such that every nonempty finite binary class (C\subseteq\{0,1\}^X), with

\[
d=\operatorname{VC}(C),\qquad
\ell=\operatorname{LD}(C),\qquad
s=1+\log^*(1+\ell),\qquad q=d+s\geq1,
\]

has one distribution-independent randomized producer (G_C) of sample cost (1\leq m_C\leq q^a) for which every realizable (Q) has an arbitrary hypothesis (h_{C,Q}) satisfying

\[
R_Q(h_{C,Q})\leq \alpha_0/2,
\qquad
\Pr[G_C(Q^{m_C})=h_{C,Q}]\geq q^{-a},
\qquad \alpha_0=\beta_0=1/8.
\]

Fix any (\varepsilon_0\in(0,1)), put (b=2a+2), and, for (L=\log|C|), define

\[
u(L)=\log\log(e^e+L),\quad x=q^b,\quad
T_a(q,L)=x+u(L),\quad \delta_a(q,L)=e^{-T_a(q,L)},
\]
\[
N_a(q,L,\varepsilon_0)
=\left\lceil K_a\varepsilon_0^{-2}x(1+T_a(q,L))\right\rceil .
\]

The attempted conclusion is the exact conditional theorem in `setting.md`: one may choose a constant (K_a\geq2), depending only on (a,\alpha_0,\beta_0), and the universal Bun--Livni--Moran constant, such that for every sequence of nonempty finite classes (\{C_\kappa\}) with (L_\kappa=\log|C_\kappa|\to\infty) and

\[
\forall p\in\mathbb N\ \exists\kappa_0(p)\ \forall\kappa\geq\kappa_0(p):
\qquad L_\kappa>d_\kappa^p,
\tag{SP}
\]

there is, for every (\kappa), an arbitrary-output, computationally unrestricted, distribution-free realizable ((\alpha_0,\beta_0))-PAC learner (M_\kappa) that uses exactly

\[
N_\kappa=N_a(q_\kappa,L_\kappa,\varepsilon_0)
\leq 1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right)
\]

records and is ((\varepsilon_0,\delta_\kappa))-DP for

\[
\delta_\kappa=
\exp[-q_\kappa^{2a+2}-\log\log(e^e+L_\kappa)].
\]

Moreover,

\[
\log(1/\delta_\kappa)=q_\kappa^{2a+2}+\log\log(e^e+L_\kappa),
\quad
N_\kappa=L_\kappa^{o(1)}=o(L_\kappa),
\]
\[
\forall\rho>0\text{ fixed}:\qquad
\delta_\kappa N_\kappa^\rho\longrightarrow0.
\]

Thus the sequence cannot also have an eventual (\Omega(L_\kappa)) unrestricted approximate-DP PAC sample lower bound at this schedule. The same conclusion holds at any weaker privacy allowance (\bar\delta(n)) satisfying (\bar\delta(N_\kappa)\geq\delta_\kappa). In particular, for every fixed (c>0), eventually

\[
\delta_\kappa\leq \frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]

The scope remains **conditional**. This claim does not prove `assump:polynomial-global-stability` and therefore does not present an unconditional resolution of Open Question 2.

## Whole-Proof Draft

### Block G0: fixed-class notation and legal parameter range

Fix a nonempty finite class (C\subseteq\{0,1\}^X), set (L=\log|C|), and use the quantities (d,\ell,s,q,b,u,T_a,\delta_a,N_a) above. Finiteness and nonemptiness give (L\geq0), while the definition (s=1+\log^*(1+\ell)) gives (q\geq1). Hence

\[
u(L)=\log\log(e^e+L)\geq1,
\quad q^b\geq1,
\quad T_a(q,L)\geq2,
\quad 0<\delta_a(q,L)\leq e^{-2}<1.
\tag{G0.1}
\]

Thus all four public BLM parameters (\alpha_0,\beta_0,\varepsilon_0,\delta_a) lie in ((0,1)). The primitive profile supplies (1\leq m_C\leq q^a), one fixed (G_C), and, separately for each realizable (Q), an atom (h_{C,Q}) of mass at least (\eta=q^{-a}\in(0,1]). Nothing in this setup assumes a private learner, `(SC)`, `(LD)`, `(AS)`, or `(PN)`.

### Block G1: exact Bun--Livni--Moran v3 wrapper (`step_001`)

Let

\[
\phi_Z(x,y)=(x,2y-1),\qquad
\phi_H(h)(x)=2h(x)-1.
\]

Both maps are bijections between the current binary-label objects and the source's ({-1,+1})-label objects. If (Q^\pm=(\phi_Z)_\#Q), define the conjugated producer on ordered samples by

\[
G_C^\pm(S^\pm)
=\phi_H\!\left(G_C(\phi_Z^{-1}(S^\pm))\right).
\tag{G1.1}
\]

For (h_{C,Q}^\pm=\phi_H(h_{C,Q})), bijectivity gives the exact identities

\[
\operatorname{loss}_{Q^\pm}(h_{C,Q}^\pm)=R_Q(h_{C,Q}),
\qquad
\Pr[G_C^\pm((Q^\pm)^{m_C})=h_{C,Q}^\pm]
=\Pr[G_C(Q^{m_C})=h_{C,Q}].
\tag{G1.2}
\]

The recordwise recoding also preserves i.i.d. sampling and preserves replacement adjacency in both directions: two ordered binary samples differ in at most one record if and only if their recodings do. Realizability is preserved pointwise. The measurability convention in `setting.md` makes the exact atom and histogram events legal.

Apply Bun--Livni--Moran, *An Equivalence Between Private Classification and Online Prediction*, arXiv:2003.00563v3 (22 June 2021), Section 5.2, Theorem 17, source label `thm:selection`, with

\[
G=G_C^\pm,\quad m=m_C,\quad \eta=q^{-a},\quad
\alpha=\alpha_0,\quad \beta=\beta_0,
\quad \varepsilon=\varepsilon_0,\quad \delta=e^{-T_a(q,L)}.
\tag{G1.3}
\]

The theorem supplies an arbitrary-output learner (A_C^\pm) and a universal numerical constant (C_{\mathrm{BLM}}) such that, for every (Q^\pm) realizable by the recoded class, the learner has loss at most (\alpha_0) except with probability at most (\beta_0), is ((\varepsilon_0,\delta_a))-DP under replacement adjacency, and has an integer sample size (n_C) satisfying

\[
n_C\leq C_{\mathrm{BLM}}
\left[
\frac{m_C}{q^{-a}\varepsilon_0}
 \log\frac{1}{q^{-a}\beta_0\delta_a}
+\frac{1}{\alpha_0\varepsilon_0}
 \log\frac{1}{q^{-a}\beta_0}
\right].
\tag{G1.4}
\]

The fixed-distribution wording of the source premise does not change the quantifiers of the current learner. The source construction uses only the fixed map (G_C^\pm) and the public parameters in (G1.3), not (Q^\pm). Since the same (G_C^\pm) satisfies the atom premise for every realizable (Q^\pm), the resulting kernel (A_C^\pm) is one distribution-independent learner whose guarantee holds for every such distribution.

Finally set (A_C=\phi_H^{-1}\circ A_C^\pm\circ\phi_Z^{\otimes n_C}). Input recoding and output recoding are deterministic pre/postprocessing by recordwise bijections. Equations (G1.1)--(G1.2) show zero residual in population risk, atom mass, output equality, and adjacency. Thus (A_C) is an arbitrary-output distribution-free realizable ((\alpha_0,\beta_0))-PAC learner with the same ((\varepsilon_0,\delta_a))-DP guarantee and bound (G1.4). No properness or computational conclusion is imported. In particular, the proof consumes only Theorem 17's accurate-output conclusion, not the stronger informal claim that the frequent atom itself is identified.

### Block G2: exact `(SC)`, a universal constant, ceiling, and padding (`step_002`)

Write

\[
B_0=\log(1/\beta_0)=\log 8,
\qquad x=q^b=q^{2a+2},
\qquad T=T_a(q,L)=x+u(L).
\]

Using (m_C\leq q^a), (1/\eta=q^a), and (\log(1/\delta_a)=T) in (G1.4) gives

\[
n_C\leq \frac{C_{\mathrm{BLM}}}{\varepsilon_0}
\left[
q^{2a}(T+a\log q+B_0)
+\alpha_0^{-1}(a\log q+B_0)
\right].
\tag{G2.1}
\]

All terms in this bracket can be dominated without hiding (L). Since (q\geq1), (x=q^b\geq1), (q^{2a}\leq x), (T\geq x), and (\log q\leq q^b=x),

\[
q^{2a}T\leq xT,
\qquad
q^{2a}a\log q\leq ax^2\leq axT,
\qquad
q^{2a}B_0\leq B_0x,
\tag{G2.2}
\]

and

\[
\alpha_0^{-1}a\log q\leq \alpha_0^{-1}ax,
\qquad
\alpha_0^{-1}B_0\leq \alpha_0^{-1}B_0x.
\tag{G2.3}
\]

Therefore, with the explicit constant

\[
D_a=1+a+B_0+\alpha_0^{-1}(a+B_0),
\tag{G2.4}
\]

the bracket in (G2.1) is at most

\[
D_a x(1+T).
\tag{G2.5}
\]

Choose once and for all

\[
K_a\geq \max\{2,C_{\mathrm{BLM}}D_a\}.
\tag{G2.6}
\]

This choice depends only on (a,\alpha_0,\beta_0,C_{\mathrm{BLM}}), and not on (X,C,Q,q,L,|C|,\kappa), or (\varepsilon_0). Because (0<\varepsilon_0<1), (\varepsilon_0^{-1}\leq\varepsilon_0^{-2}), so (G2.1)--(G2.6) imply

\[
n_C\leq K_a\varepsilon_0^{-2}x(1+T)
\leq \left\lceil K_a\varepsilon_0^{-2}x(1+T)\right\rceil
=N_a(q,L,\varepsilon_0).
\tag{G2.7}
\]

This is `(SC)` with every source term accounted for. Since (N_a=\lceil A\rceil) for (A=K_a\varepsilon_0^{-2}x(1+T)), the elementary ceiling bound gives the target-facing formula

\[
N_a\leq1+A
=1+K_a\varepsilon_0^{-2}q^{2a+2}
\left(1+q^{2a+2}+u(L)\right).
\tag{G2.8}
\]

To obtain exactly (N_a) records, define (M_C(S_1,\ldots,S_{N_a})=A_C(S_1,\ldots,S_{n_C})). Under (Q^{N_a}), the used prefix has law (Q^{n_C}), so the PAC guarantee is unchanged. If two (N_a)-samples differ in a used coordinate, their prefixes are replacement-adjacent and the two DP inequalities for (A_C) apply. If they differ only in an ignored coordinate, the two output laws are identical. Hence padding has exactly zero PAC and DP residual. At (q=1), (a\log q=0), (x=1), and (1+T\geq3), so the same domination and padding remain valid.

### Block G3: exact privacy logarithm and bounded-(q) activation (`step_003`)

For every (L\geq0),

\[
e^e+L\geq e^e,
\quad \log(e^e+L)\geq e,
\quad u(L)=\log\log(e^e+L)\geq1.
\tag{G3.1}
\]

Direct evaluation, using natural logarithms exactly as fixed in `setting.md`, gives

\[
e^{-u(L)}=\frac{1}{\log(e^e+L)},
\qquad
\log\frac1{\delta_a(q,L)}
=T_a(q,L)=q^{2a+2}+\log\log(e^e+L).
\tag{G3.2}
\]

This is `(LD)`, not an asymptotic equivalence. Also (u(L)\to\infty) as (L\to\infty). Consequently, on an allowed sequence with bounded (q_\kappa), the explicit (u(L_\kappa)) term is already active and forces (\delta_\kappa\to0). On an unbounded-(q_\kappa) sequence, the nonnegative (q_\kappa^b) term only strengthens privacy. No cardinality dependence is hidden in (K_a), (C_{\mathrm{BLM}}), or the primitive producer profile.

### Block G4: quantifier-accurate `(AS)`, including (d=0) and bounded (q) (`step_004`)

Now fix a sequence in the theorem. Item 1 gives (L_\kappa=\log|C_\kappa|\to\infty). We first extract the exact consequence of `(SP)`. Let (t>0) be arbitrary and choose a positive integer (p>2/t), so (1/p<t/2). By `(SP)`, for all sufficiently large (\kappa),

\[
d_\kappa^p<L_\kappa.
\]

This implies

\[
d_\kappa<L_\kappa^{1/p}\leq L_\kappa^{t/2}
\tag{G4.1}
\]

once (L_\kappa\geq1). The implication includes (d_\kappa=0); it never divides by (d_\kappa) or assumes (d_\kappa\geq1).

For the Littlestone term, finiteness gives

\[
\ell_\kappa\leq \log_2|C_\kappa|=\frac{L_\kappa}{\log2}.
\tag{G4.2}
\]

For (z\geq1), the elementary iterated-log bound (\log_2^*z\leq1+\log_2z) follows by applying one base-two logarithm and using (\log_2^*w\leq w) for (w\geq1). Therefore

\[
s_\kappa
=1+\log_2^*(1+\ell_\kappa)
\leq2+\log_2\!\left(1+\frac{L_\kappa}{\log2}\right)
\leq C_0(1+\log(e+L_\kappa))
\tag{G4.3}
\]

for a universal numerical (C_0). Since every positive power dominates (1+\log(e+L)), (G4.3) gives, eventually,

\[
s_\kappa\leq L_\kappa^{t/2}.
\tag{G4.4}
\]

Combining (G4.1) and (G4.4), and increasing the eventual threshold so that (2\leq L_\kappa^{t/2}), yields

\[
q_\kappa=d_\kappa+s_\kappa
\leq2L_\kappa^{t/2}\leq L_\kappa^t.
\tag{G4.5}
\]

Because (t>0) was arbitrary and the threshold may depend on (t) (equivalently on the chosen (p)), this is exactly

\[
q_\kappa=L_\kappa^{o(1)}.
\tag{G4.6}
\]

It is not derived from one fixed (p), from an infinitely-often statement, or from (q_\kappa\to\infty).

Fixed powers preserve the subpower property, so (x_\kappa=q_\kappa^b=L_\kappa^{o(1)}). Also

\[
u(L_\kappa)=\log\log(e^e+L_\kappa)=L_\kappa^{o(1)}.
\tag{G4.7}
\]

For a fully quantified propagation, fix (r>0). Eventually (x_\kappa\leq L_\kappa^{r/4}) and (u(L_\kappa)\leq L_\kappa^{r/4}), whence

\[
T_a(q_\kappa,L_\kappa)=x_\kappa+u(L_\kappa)
\leq2L_\kappa^{r/4}\leq L_\kappa^{r/2}.
\tag{G4.8}
\]

Thus (T_a=L_\kappa^{o(1)}). For the ceiling, (A_\kappa=K_a\varepsilon_0^{-2}x_\kappa(1+T_\kappa)\geq1), so (N_\kappa=\lceil A_\kappa\rceil\leq2A_\kappa). Since (x_\kappa) and (1+T_\kappa) are subpower and (2K_a\varepsilon_0^{-2}) is fixed in the (\kappa\)-limit, eventually

\[
x_\kappa\leq L_\kappa^{r/4},\quad
1+T_\kappa\leq L_\kappa^{r/4},\quad
2K_a\varepsilon_0^{-2}\leq L_\kappa^{r/2},
\]

and hence

\[
N_\kappa\leq L_\kappa^r.
\tag{G4.9}
\]

Because (r>0) was arbitrary,

\[
T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)},
\qquad N_\kappa=L_\kappa^{o(1)}.
\]

Taking, for example, (r=1/2) in (G4.9) gives

\[
0\leq\frac{N_\kappa}{L_\kappa}\leq L_\kappa^{-1/2}\longrightarrow0,
\tag{G4.10}
\]

which is `(AS)`. If (q_\kappa\leq Q) is bounded, the exact formula separately gives

\[
N_\kappa
\leq \left\lceil K_a\varepsilon_0^{-2}Q^b(1+Q^b+u(L_\kappa))\right\rceil
=O_{a,Q,\varepsilon_0}(1+u(L_\kappa))=o(L_\kappa),
\tag{G4.11}
\]

so the critical bounded-(q) branch is preserved explicitly.

### Block G5: ceiling-accurate `(PN)` for every fixed (\rho>0) (`step_005`)

Let

\[
x_\kappa=q_\kappa^b\geq1,
\qquad u_\kappa=u(L_\kappa)\geq1,
\qquad
A_\kappa=K_a\varepsilon_0^{-2}x_\kappa(1+x_\kappa+u_\kappa).
\]

Here (A_\kappa\geq6) because (K_a\geq2), (\varepsilon_0^{-2}>1), (x_\kappa\geq1), and (1+x_\kappa+u_\kappa\geq3). In particular the ceiling is controlled exactly by

\[
N_\kappa=\lceil A_\kappa\rceil
\leq A_\kappa+1\leq2A_\kappa.
\tag{G5.1}
\]

Fix an arbitrary real (\rho>0). The quantifier is fixed-(\rho) followed by (\kappa\to\infty); no uniformity over all (\rho) is claimed. From `(LD)` and (G5.1),

\[
\begin{aligned}
\delta_\kappa N_\kappa^\rho
&\leq (2K_a\varepsilon_0^{-2})^\rho
e^{-x_\kappa-u_\kappa}
\left[x_\kappa(1+x_\kappa+u_\kappa)\right]^\rho.
\end{aligned}
\tag{G5.2}
\]

Since

\[
1+x+u\leq(1+x)(1+u),
\tag{G5.3}
\]

(G5.2) factors as

\[
\delta_\kappa N_\kappa^\rho
\leq (2K_a\varepsilon_0^{-2})^\rho
\underbrace{e^{-x_\kappa}x_\kappa^\rho(1+x_\kappa)^\rho}_{F_\rho(x_\kappa)}
\underbrace{e^{-u_\kappa}(1+u_\kappa)^\rho}_{H_\rho(u_\kappa)}.
\tag{G5.4}
\]

For (x\geq1), (1+x\leq2x), so

\[
F_\rho(x)\leq2^\rho e^{-x}x^{2\rho},
\qquad
B_\rho:=\sup_{x\geq1}F_\rho(x)<\infty.
\tag{G5.5}
\]

The finite supremum follows directly from exponential domination of the fixed power (x^{2\rho}) (the unconstrained maximizer is (x=2\rho), with the endpoint (x=1) used when (2\rho<1)). Meanwhile (L_\kappa\to\infty) implies (u_\kappa\to\infty), and

\[
\log H_\rho(u_\kappa)
=-u_\kappa+\rho\log(1+u_\kappa)\longrightarrow-\infty.
\tag{G5.6}
\]

Thus (G5.4)--(G5.6) prove

\[
\forall\rho>0\text{ fixed}:\qquad
\delta_\kappa N_\kappa^\rho\longrightarrow0.
\tag{PN}
\]

No behavior of (x_\kappa) was assumed. If (q_\kappa) is bounded, (F_\rho(x_\kappa)) is bounded while the independently active (H_\rho(u_\kappa)) vanishes. If (q_\kappa\to\infty), (G5.5) already controls the resulting growth; arbitrary oscillation is covered by the same supremum.

For the displayed source allowance, specialize only after `(PN)` has been proved. Taking (\rho=3), for every fixed (c>0), eventually

\[
\delta_\kappa N_\kappa^3\leq c,
\qquad\text{hence}\qquad
\delta_\kappa\leq\frac{c}{N_\kappa^3}.
\tag{G5.7}
\]

For every integer (N\geq1), (\log(eN)=1+\log N\leq N). Therefore

\[
\frac{1}{N^3}\leq\frac{1}{N^2\log(eN)},
\]

and (G5.7) gives

\[
\delta_\kappa\leq
\frac{c}{N_\kappa^2\log(eN_\kappa)}
\tag{G5.8}
\]

eventually. The ceiling, bounded-(q) branch, and every-fixed-(\rho) quantifier are all retained.

### Block G6: privacy monotonicity and the Item 3 contradiction (`step_006`)

Apply Blocks G0--G5 independently to each (C_\kappa). The same (a), (C_{\mathrm{BLM}}), and choice (G2.6) of (K_a) work for every index. The padded learner (M_\kappa) uses exactly (N_\kappa) records, has arbitrary output, is computationally unrestricted, and is distribution-free realizable ((\alpha_0,\beta_0))-PAC and ((\varepsilon_0,\delta_\kappa))-DP. Blocks G3--G5 supply the displayed privacy logarithm, `(AS)`, and `(PN)` for that exact learner and exact sample count.

Privacy monotonicity follows directly from the defining inequalities. If (\bar\delta(N_\kappa)\geq\delta_\kappa), then for every adjacent (S,S') and every measurable event (E),

\[
\Pr[M_\kappa(S)\in E]
\leq e^{\varepsilon_0}\Pr[M_\kappa(S')\in E]+\delta_\kappa
\leq e^{\varepsilon_0}\Pr[M_\kappa(S')\in E]+\bar\delta(N_\kappa),
\tag{G6.1}
\]

and the same calculation with (S,S') interchanged proves ((\varepsilon_0,\bar\delta(N_\kappa)))-DP. The valid direction is from the constructed smaller (\delta_\kappa) to the allowed larger (\bar\delta), never the reverse.

Suppose, toward Item 3, that the same sequence had an unrestricted approximate-DP realizable-PAC sample lower bound (\Omega(L_\kappa)) at the exact schedule (\delta_\kappa), or at an allowed schedule (\bar\delta) satisfying the comparison above. By the meaning of an eventual (\Omega(L_\kappa)) lower bound at the fixed (\alpha_0,\beta_0,\varepsilon_0), there would be constants (c_*>0) and (\kappa_*>0) such that every eligible learner for (C_\kappa) used at least (c_*L_\kappa) records for all (\kappa\geq\kappa_*). But (M_\kappa) is eligible, by (G6.1) when relaxation is needed, while (G4.10) gives an index (\kappa_1) for which

\[
N_\kappa<c_*L_\kappa
\qquad(\kappa\geq\kappa_1).
\tag{G6.2}
\]

Taking (\kappa\geq\max\{\kappa_*,\kappa_1\}) contradicts the lower bound. Equation (G5.8) shows that the constructed learner lies inside the standard displayed source allowance for every fixed allowance constant (c>0). The contradiction is universal over sequences satisfying Items 1 and 2, including bounded-(q_\kappa) sequences, but remains conditional on `assump:polynomial-global-stability`.

### Assembly conclusion

G1 produces the exact unrestricted private learner and raw source rate. G2 converts that rate to the exact (N_a)-sample interface with a class-independent (K_a) and zero-residual padding. G3 supplies the exact cardinality-aware privacy logarithm. G4 uses the exact every-(p), eventually-all-(\kappa) quantifiers to establish (N_\kappa=o(L_\kappa)), including (d_\kappa=0) and bounded (q_\kappa). G5 proves negligible privacy for each fixed (\rho>0), with the ceiling retained, and supplies the (\rho=3) source comparison. G6 applies DP monotonicity in the correct direction and obtains the direct (o(L)\) versus (\Omega(L)) contradiction. These blocks compose to the exact formalized conditional claim without a new assumption, output target, dependency, mode, or hidden cardinality term.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G0: notation and range | Fixes exact objects and verifies (\delta\in(0,1)), (q\geq1), and legal BLM parameters | Direct assembly prelude | `setting.md` definitions | Primitive parameter ranges; finiteness/nonemptiness | Local scalar checks only; `step-local` |
| G1: BLM v3 wrapper | Produces one arbitrary-output distribution-free PAC/DP learner and exact raw two-term bound | `step_001` | G0; primitive producer profile | `assump:polynomial-global-stability`; realizable (Q) as the PAC quantifier | Exact cited-result application, recoding, and fixed-(Q)-to-uniform learner wrapper; `step-local` |
| G2: `(SC)` and padding | Produces universal (K_a), exact (N_a) ceiling, public upper bound, and exactly-(N_a) learner | `step_002` | G1 raw learner and bound | No new theorem assumption | Termwise domination, integer ceiling, and prefix-padding DP proof; `step-local` |
| G3: `(LD)` | Produces the exact privacy schedule and bounded-(q) activation | `step_003` | G2 according to the accepted graph; scalar definitions | No new theorem assumption | Exact logarithm/exponential identities; `step-local` |
| G4: `(AS)` | Converts exact Item 2 quantifiers into (q,T,N=L^{o(1)}) and (N=o(L)) | `step_004` | G2--G3 formulas | Primitive Item 1, `(SP)`, finite-class counting | Quantifier extraction, (d=0), log-star bound, subpower propagation, ceiling; `step-local` |
| G5: `(PN)` | Proves every-fixed-(\rho) negligible privacy and the (\rho=3) source allowance | `step_005` | G3 exact schedule; G4 dependency and exact (N) interface | Primitive (L_\kappa\to\infty) already in Item 1 | Ceiling factorization, uniform (x)-supremum, fixed-(\rho) limit, allowance comparison; `step-local` |
| G6: final closure | Produces the exact conditional universal nonexistence conclusion | `step_006` | G1--G5 | Original primitive profile and sequence premises only | DP monotonicity and (o(L)) versus eventual (\Omega(L)) assembly; `step-local` |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Starts the derived-output chain | Restate Theorem 17 exactly; prove recoding equalities, distribution-free kernel identity, arbitrary-output/postprocessing, and adjacency compatibility | Source identity fixed to arXiv:2003.00563v3, Section 5.2, Theorem 17 (`thm:selection`) |
| `step_002` | G2 | Consumes G1; exports to G4 and G6 | Establish (G2.1)--(G2.8), choose (K_a), handle (q=1), and prove exact prefix padding | No (L)-term or (\varepsilon_0)-dependence is hidden in (K_a) |
| `step_003` | G3 | Follows G2; exports schedule to G5 and G6 | Establish (u\geq1), (u\to\infty), (e^{-u}), and exact `(LD)` | Explicit (u(L)) is essential at bounded (q) |
| `step_004` | G4 | Consumes formulas from G2--G3; exports `(AS)` to G6 | Prove (G4.1)--(G4.11), including exact quantifiers, (d=0), log-star/counting bridge, fixed-power propagation, ceiling | No inference (q_\kappa\to\infty) is allowed |
| `step_005` | G5 | Consumes G3--G4; exports `(PN)` and allowance comparison to G6 | Prove ceiling bound, factorization, finite (x)-supremum, (u)-decay for each fixed real (\rho>0), and (\rho=3) comparison | Constants may depend on fixed (a,\rho,\varepsilon_0,K_a), not on (\kappa,q,L,C) |
| `step_006` | G6 and assembly conclusion | Consumes all previous generated outputs | Instantiate every class, prove DP monotonicity in both adjacency directions, formalize Item 3 (\Omega)-constant, and derive contradiction | Must retain the `conditional` progress label and unrestricted learner scope |

## Dependency And Assumption Audit

| Condition or object | Provenance classification | Producer / source | Consumers | Audit result |
| --- | --- | --- | --- | --- |
| Finiteness/nonemptiness, (d,\ell,s,q,L), measurability, risk, replacement adjacency | Primitive conditions and formalized definitions | `setting.md` | G0--G6 | Legal; no generated fact hidden |
| Universal (a), (G_C,m_C,h_{C,Q}), cost/risk/atom inequalities | Primitive condition | `assump:polynomial-global-stability` | G1 | This is the sole nonstandard theorem-facing hypothesis and remains explicit |
| (\alpha_0=\beta_0=1/8), fixed (\varepsilon_0\in(0,1)) | Primitive parameter conditions | `setting.md` | G0--G6 | Legal and fixed before construction |
| Realizability of (Q) | Universal PAC input scope, not an added hypothesis on a generated object | Formalized PAC definition | G1 | The same learner must handle every such (Q) |
| BLM learner and raw two-term bound | Derived conclusion | G1 / `step_001` | G2, G6 | Legal producer and dependency path |
| Universal (K_a), `(SC)`, and exactly-(N_a) padded learner | Derived conclusion | G2 / `step_002` | G4, G6 | Legal producer; padding does not become a theorem assumption |
| Exact schedule and `(LD)` | Derived identity | G3 / `step_003` | G5, G6 | Legal producer; not assumed as privacy negligibility |
| (L_\kappa\to\infty) and exact `(SP)` | Primitive sequence conditions | Formalized goal | G4--G6 | Quantifier order preserved |
| (\ell_\kappa\leq L_\kappa/\log2) | Standard finite-class counting fact included in setup | Direct mistake-tree counting | G4 | Same objects and conventions; no external proxy dimension |
| (q,T,N=L^{o(1)}), (N=o(L)) | Derived sequence controls | G4 / `step_004` | G6 | Legal producer; bounded-(q) branch included |
| `(PN)` and source-allowance certificate | Derived sequence controls | G5 / `step_005` | G6 | Legal producer; exact (N,\delta) consumed |
| Conditional nonexistence conclusion | Derived final conclusion | G6 / `step_006` | Final theorem | Does not promote the primitive profile to a proved fact |

There are no theorem-facing local conditional hypotheses and no missing derived-condition bridge. Conditionality refers only to the explicit primitive global-stability profile, not to an assumed generated event, recurrence, stability property, or private learner.

## Citation And Tool Audit

| Source or tool | Current-branch objects and role | Assumptions / discharge path | Conclusion needed and interface match | Convention, boundary, and non-output audit | Affected block / step |
| --- | --- | --- | --- | --- | --- |
| Bun--Livni--Moran, arXiv:2003.00563v3 (22 June 2021), Section 5.2, Theorem 17, label `thm:selection` | (G_C^\pm,m_C,\eta=q^{-a},Q^\pm,h_{C,Q}^\pm); stable-selection conversion | Atom mass and (\alpha_0/2) risk come from the primitive profile; (G_C) is fixed across (Q); parameters satisfy (G0.1); realizability is preserved | Arbitrary-output ((\varepsilon_0,\delta_a))-DP, loss (\leq\alpha_0) with failure (\leq\beta_0), and exactly the two terms in (G1.4) up to universal (C_{\rm BLM}) | Source labels are ({-1,+1}), branch labels ({0,1}); (G1.1)--(G1.2) give zero-residual recoding. Ordered one-record replacement and output scope match. At (q=1), (\eta=1) remains a valid mass lower bound. The source does not prove the primitive profile, `(SC)`, `(LD)`, `(AS)`, `(PN)`, properness, efficiency, or exact atom identification | G1 / `step_001` |
| Deterministic recoding and DP postprocessing | (\phi_Z,\phi_H,A_C^\pm,A_C) | Recordwise bijection and measurable kernels from the setting | Equal risk/atom probabilities; identical adjacency; preserved DP and arbitrary-output interface | Exact pointwise inverse gives zero object residual; branch and source outputs target the same functions after inverse recoding | G1 / `step_001` |
| Prefix padding | (A_C) on (n_C) records and (M_C) on (N_a) records | (n_C\leq N_a) from `(SC)` | Same PAC/DP parameters at exactly (N_a) | Used-prefix changes invoke DP; ignored-suffix changes give identical laws; i.i.d. prefix has exact source law | G2 / `step_002` |
| Finite-class Littlestone counting | (\ell(C),\lvert C\rvert) | A shattered complete mistake tree of depth (r) has (2^r) root-to-leaf label paths, which require (2^r) distinct concepts; hence (2^\ell\leq\lvert C\rvert) | (\ell\leq\log_2\lvert C\rvert=L/\log2) | Uses the same finite binary class and base-two LD convention; valid for (\ell=0) and (d=0) | G4 / `step_004` |
| Elementary log/log-star and subpower facts | (s,u,q,T,N,L) | Direct inequalities (G4.1)--(G4.9) | Exact every-exponent eventual bounds and ceiling propagation | Natural log versus base-two log-star is exposed in (G4.2)--(G4.3); no limit interchange or probability statement | G4 / `step_004` |
| Exponential-versus-polynomial comparison | (F_\rho,H_\rho,x,u) | Direct bounds (G5.3)--(G5.6) for fixed (\rho>0) | Uniform-in-(x\geq1) domination and vanishing-in-(u) needed for `(PN)` | Valid for noninteger (\rho>0), (x=1), bounded/oscillating/unbounded (x); not uniform in growing (\rho) | G5 / `step_005` |
| DP monotonicity | Same learner (M_\kappa), same adjacency/event, (\delta_\kappa\leq\bar\delta(N_\kappa)) | Direct substitution in both defining DP inequalities | ((\varepsilon_0,\delta_\kappa))-DP implies ((\varepsilon_0,\bar\delta(N_\kappa)))-DP | Only the additive allowance changes; no object, metric, sample count, or learner transformation | G6 / `step_006` |
| Definitions of (o(L)) and eventual (\Omega(L)) | Exact scalar (N_\kappa,L_\kappa) | `(AS)` and the hypothesized Item 3 lower-bound constant | Contradict (N_\kappa/L_\kappa\to0) with (N_\kappa\geq c_*L_\kappa) eventually | Pointwise sequence comparison; no union bound or cross-class privacy composition | G6 / `step_006` |

The source's internal stable-histogram and generic-private-learner lemmas are not separately invoked. Their costs are consumed only through the audited Theorem 17 interface.

## Quantitative Dependence Audit

- **Exposed variables:** (a,m_C,\eta,q,d,\ell,s,L,b,u,T_a,\delta_a,N_a,\alpha_0,\beta_0,\varepsilon_0,C_{\mathrm{BLM}}); at sequence level (\kappa), every requested exponent (t,r>0), every fixed (\rho>0), allowance constant (c>0), comparison schedule (\bar\delta), and Item 3 constant (c_*>0).
- **Hidden constants:** (K_a) may depend only on (a,\alpha_0,\beta_0,C_{\mathrm{BLM}}). The finite constant in `(PN)` may additionally depend on fixed (\rho,\varepsilon_0,K_a). The log-star comparison has a universal constant (C_0). No hidden constant may depend on (X,C,Q,q,L,|C|,\kappa), an output representation, or the sequence. Eventual indices may depend on the fixed exponent and on the fixed sequence, as required by the quantifiers.
- **Fixed quantities:** (a,\alpha_0=\beta_0=1/8,\varepsilon_0), the natural-log/base-two-log-star conventions, zero-one risk, and replacement adjacency are fixed while (\kappa\to\infty). For `(PN)`, (\rho) is fixed before the limit.
- **Probability mode:** PAC utility is high probability jointly over the i.i.d. sample and all learner randomness, uniformly over every realizable (Q). DP is the pointwise two-sided kernel inequality for every adjacent pair and measurable event. `(AS)`, `(PN)`, privacy monotonicity, and the Item 3 contradiction are deterministic scalar statements; there is no probability union over (\kappa).
- **Horizon / limiting mode:** The learner is fixed-sample per class. The only limiting scope is eventual sequence asymptotics. There is no all-time trajectory, stopping time, or privacy composition across classes.
- **Norm / metric mode:** Utility uses population zero-one risk (R_Q). Source/target transfer uses exact pointwise hypothesis recoding. Rate conclusions use the scalar ratio (N_\kappa/L_\kappa) and product (\delta_\kappa N_\kappa^\rho).
- **Auxiliary choices:** (b=2a+2), (u(L)=\log\log(e^e+L)), (T=x+u), and (K_a) in (G2.6). Each is public and explicit. There is no hidden auxiliary tolerance.
- **Rate-specialization bridge:** G2 retains and dominates every source term explicitly; G4 allocates arbitrary positive exponents before taking limits; G5 incorporates the ceiling before factorization; G5.7--G5.8 specialize only after choosing (\rho=3). No term is dropped by prose.
- **Baseline invariance:** Binary recoding preserves the original ({0,1}) risk and unrestricted output exactly. Prefix padding preserves exactly the same DP/PAC parameters. At (q=1), the atom source remains (\eta=1), `(SC)` remains valid, and (u(L)) remains active. For any bounded-(q_\kappa) sequence, (G4.11) and (G5.4) preserve the original (N=o(L)) and every-fixed-(\rho) `(PN)` conclusions rather than a weaker fixed-(\delta) surrogate.
- **Conditional-source label:** The quantitative theorem is conditional on the universal profile. None of the displayed rate bridges changes that progress type or claims that the profile itself has been established.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| BLM wrapper and arbitrary-output distribution-free learner | Cited-tool conversion; sole private-learner producer | One fixed finite (C), uniformly over all realizable (Q); fixed sample | (G1.1)--(G1.4): exact recoding plus Theorem 17 | Primitive accurate atom of mass (q^{-a}>0) and BLM stable selection | Producer cost, inverse mass, (\log(1/\delta)), confidence/error terms, label convention, fixed-(Q) wording | Finite source construction already priced by (G1.4); no cross-(\kappa) or iterative accumulation | Algebraic coupling and cited-tool conversion | Primitive profile plus arXiv:2003.00563v3 Theorem 17; (q=1) gives (\eta=1), not a vanishing source | The source premise/conclusion have exactly the needed atom, risk, privacy, arbitrary-output, and sample-bound classes after recoding | Produced (h^\pm), consumed (h); theorem metric is zero-one risk; (h=(h^\pm+1)/2) pointwise, so risk/atom/adjacency residuals are zero | `step-local` | Primitive profile -> recoded (G_C) -> Theorem 17 -> G2/G6; private learnability is not assumed | No recurrence. At (q=1), (m_C=1,\eta=1); the source is active before its conclusion is consumed | All quantitative defects are retained in (G1.4); recoding is equality; one fixed source algorithm handles all (Q) | `assump:polynomial-global-stability`, parameter ranges, realizability | Raw BLM learner and bound | Improper/randomized output, (q=1), replacement of either feature or label all remain in the mapped source convention | No unrestricted private learner or legal raw bound would be produced |
| `(SC)`, universal (K_a), ceiling, exact-size learner | Quantitative specialization and exported sample interface | Fixed class and fixed (\varepsilon_0\in(0,1)) | (G2.1)--(G2.8); (n_C\leq A\leq\lceil A\rceil=N_a) | Power slack (b-2a=2), (T\geq x), and (1+T) | (a\log q,B_0,1/\alpha_0,1/\varepsilon_0), rounding, unused records | Fixed per-class inequalities; no accumulated defect | Structural upper comparison and projection/nonexpansive maintenance | G1 raw bound and primitive scalars; (q\geq1), (\varepsilon_0<1); no boundary excluded | Upper-comparison source controls every positive cost term separately; no lower/sign claim is inferred | Raw (n_C)-kernel to exact (N_a)-kernel in the same risk/DP interfaces; ignored suffix gives zero residual | `step-local` | G1 -> G2 -> G4/G6; `(AS)` is not used to prove `(SC)` | No recurrence. At (q=1), log defect vanishes and (1+T\geq3); at first padded input, the suffix is ignored before evaluation | Bracket (\leq D_ax(1+T)), (\varepsilon^{-1}\leq\varepsilon^{-2}), (K_a\geq C_{\rm BLM}D_a), ceiling and prefix projection | (q\geq1,\varepsilon_0\in(0,1),\alpha_0,\beta_0) | G1 learner/bound; (N_a)-learner | (q=1), nonintegral analytic bound, (n_C<N_a), and a change in an ignored record are handled exactly | A surviving (L)-dependent or wrong-scale term would invalidate the public (N_a) interface |
| Exact `(LD)` and bounded-(q) privacy activation | Exact privacy identity and baseline-preserving schedule | Pointwise for all (q\geq1,L\geq0), then along any allowed sequence | (G3.1)--(G3.2) | Explicit positive exponent (q^b+u(L)), with (u(L)\to\infty) independently of (q) | Potential nondecay when (q) is bounded | Pointwise exponent; no additive privacy composition across (\kappa) | Algebraic coupling and structural lower comparison | Public scalar definitions; (u(L)\geq1); no allowed branch excluded | The positive exponent directly supplies (0<\delta<1) and the exact logarithm; (u) has the necessary divergence content | Produced and consumed (\delta_a) are identical in the DP parameter metric; residual zero | `step-local` | Definitions -> G3 -> G5/G6; `(PN)` is not assumed | At (L=0), (u=1); along constant (q), (u(L)) is active before `(PN)` consumes it | Exact identity (\log(1/e^{-T})=T); (e^{-u}=1/\log(e^e+L)) | (q\geq1,L\geq0) | Exact (T,\delta) | (L=0,q=1), bounded (q), unbounded (q) all pass | Without (u(L)), bounded-(q) sequences could have nonnegligible fixed (\delta) |
| `(AS)`: (q,T,N=L^{o(1)}), (N=o(L)) | Sequence mode conversion and sample-rate closure | Every admissible sequence; for every exponent, eventually all (\kappa) | (G4.1)--(G4.11), not a recurrence | Full every-(p) `(SP)` quantifier, finite-class counting, and log/log-star growth | (d=0), additive (s), constants, powers/products, (u(L)), ceiling, bounded (q) | Eventual pointwise comparisons only; no sum, union, or adversarial-sign accumulation | Structural upper comparison | Primitive Item 1 and `(SP)` plus direct finite-class counting; bounded (q) is included, not excluded | `(SP)` supplies arbitrary root exponents for (d); counting/log-star supplies subpower (s); both are the correct claim classes | Controls are on exact (q,T,N,L), with no proxy object; all fixed/ceiling residuals are dominated at arbitrary (L^r) scale | `step-local` | Item 1/`(SP)`/counting -> G4 -> G6; final sublog rate is not a premise | No recurrence. (d=0) enters (G4.1) directly; bounded (q) has the explicit trace (G4.11) | Allocate (t/2) to (d,s); allocate (r/4,r/4,r/2) to (x,1+T,) fixed factors; take (r=1/2) | Item 1, `(SP)`, finiteness | Exact formulas from G2--G3; subpower certificates | (d=0,d=1), bounded (\ell), bounded (q), and arbitrary fixed target exponent pass | A single-(p) or infinitely-often premise would not support the mode upgrade |
| `(PN)` for every fixed (\rho>0), ceiling included | Limiting privacy closure at the exact learner sample scale | Every admissible sequence; fixed (\rho), then (\kappa\to\infty) | (G5.1)--(G5.6): (\delta N^\rho\leq C F_\rho(x)H_\rho(u)) | Exponential decay in (x+u), with independent (u\to\infty) | Ceiling; polynomial factor; bounded, unbounded, or oscillating (x) | Pointwise product, not privacy composition; (F_\rho) has a finite uniform budget and (H_\rho\to0) | Structural upper comparison | Exact G3 schedule, exact (N_a), and primitive (L\to\infty); no branch excluded | Exponential sources have the exact domination content for every fixed polynomial power | Produced exact (\delta,N), consumed exact (N^{-\rho}) scale; ceiling residual (\leq2^\rho) and every factor is dominated | `step-local` | G3/exact (N)/Item 1 -> G5 -> G6; negligible privacy is not an admissibility premise | At constant (q), (F_\rho) is fixed and (H_\rho) is active before the limit; at (q=1) the same holds | (1+x+u\leq(1+x)(1+u)); (\sup_{x\geq1}F_\rho<\infty); (-u+\rho\log(1+u)\to-\infty) | (L\to\infty), fixed (\rho,\varepsilon_0) | `(LD)`, exact (N_a) | Constant (q=1), oscillating (q), unbounded (q), noninteger (\rho>0) pass | Without (u\to\infty), bounded (q) leaves a nonvanishing product |
| (\rho=3) allowance, DP monotonicity, and Item 3 contradiction | Public specialization and theorem closure | Eventual sequence comparison at exact or weaker allowed privacy | (G5.7)--(G5.8), (G6.1)--(G6.2) | (N/L\to0), valid private learner, and monotone additive DP allowance | Ceiling already controlled; arbitrary positive (c,c_*); possible larger (\bar\delta) | Pointwise learners followed by eventual inequalities; no cross-class privacy/probability accumulation | Algebraic coupling and structural lower/upper comparison | G2 learner, G3--G5 rates, defining DP inequality, definition of (\Omega); bounded (q) retained | (\rho=3) has sufficient power to dominate (N^2\log(eN)); DP inequality has exact monotonic direction; (o) directly opposes positive (\Omega) | Same (C_\kappa), learner, sample count, risk, adjacency, and metric; only allowable (\delta\) is relaxed, so object residual zero | `step-local` | All earlier generated outputs -> G6 -> final claim; Item 3's negation is not used upstream | No recurrence. On bounded (q), G4/G5 remain active; equality (\bar\delta=\delta) and larger allowances both pass | (\delta N^3\leq c), (\log(eN)\leq N), (\delta\leq\bar\delta), and (N/L<c_*) eventually | Original profile and sequence premises | Exact learner, `(AS)`, `(PN)` | Any fixed allowance/lower-bound constant and bounded (q) pass; removing the primitive profile leaves only an explicitly conditional theorem | Without either an eligible learner or (N=o(L)), no Item 3 contradiction follows |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Arbitrary-output distribution-free PAC/DP learner and raw `(BLM)` | G1 / `step_001`; BLM Theorem 17 | Fixed (G_C), (m_C\leq q^a), atom mass (\geq q^{-a}), risk (\leq\alpha_0/2), legal public parameters | Controlled exactly: label, risk, adjacency, output range, distribution quantifier. Retained quantitatively: (m/\eta,\log(1/\delta),1/\alpha_0,log(1/\beta_0)). Uncontrolled: none under the primitive profile | Pointwise recoding gives zero residual in risk, atom, adjacency, and output target | Apply the cited theorem with (G1.3); use the same construction for every (Q); inverse output postprocessing | Positive atom (q^{-a}>0); universal (C_{\rm BLM}) | G2, G6 | Valid at diagnostic level; exact cited application remains local proof work |
| `(SC)`, universal (K_a), exact (N_a), and padded learner | G2 / `step_002` | G1.4; (q\geq1,x=q^b,T\geq x,\varepsilon_0<1) | Controlled separately: (a\log q,B_0,1/\alpha_0,\varepsilon^{-1}), ceiling. Uncontrolled: none | Same kernel on used prefix; exact risk/DP target and zero residual | (G2.2)--(G2.7); (K_a\geq C_{\rm BLM}D_a); (\varepsilon^{-1}\leq\varepsilon^{-2}); prefix projection | Exponent slack (b-2a=2), (1+T), public (K_a) | G4, G6 | Valid; no hidden cardinality or missing defect class |
| Exact `(LD)` schedule | G3 / `step_003` | Public definitions; (q\geq1,L\geq0) | Controlled: bounded-(q) nondecay by (u(L)). Fixed: (q^b). Uncontrolled: none | Produced and consumed (\delta_a) are identical | Exact identities (G3.1)--(G3.2) | Explicit (u(L)); no hidden margin | G5, G6 | Valid |
| `(AS)`: exact (q,T,N) subpower and sublog controls | G4 / `step_004` | Exact `(SP)`, (L\to\infty), (\ell\leq L/\log2), G2--G3 formulas | Controlled: (d,s,u), constants, powers/products, ceiling, (d=0), bounded (q). Uncontrolled: none | Exact target variables and benchmark (L=\log\lvert C\rvert); no surrogate dimension/cardinality | (G4.1)--(G4.10) with arbitrary exponent allocation; (G4.11) for bounded (q) | Full every-(p), eventually-all-(\kappa) premise and finite-class counting | G6 | Valid; no mode-upgrade gap |
| `(PN)` and standard source allowance | G5 / `step_005` | Exact (x,u,N,\delta), ceiling, (L\to\infty) | Controlled: ceiling by (2^\rho), arbitrary (x) by finite supremum, fixed polynomial in (u) by exponential decay. Uncontrolled: none | Exact (\delta,N) at (N^{-\rho}) and (N^{-2}\log(eN)^{-1}) target scales; all residuals dominated | (G5.2)--(G5.8), with (\rho=3) only for final allowance | Exponential (e^{-x-u}), independently divergent (u) | G6 | Valid; includes bounded (q) and every fixed real (\rho>0) |
| Conditional universal nonexistence conclusion | G6 / `step_006` | Exact padded learners, `(LD)`, `(AS)`, `(PN)`, DP definition | Controlled: arbitrary positive source allowance and (\Omega)-constants. Uncontrolled but explicit: truth of primitive global-stability profile | Same class, sample count, risk, adjacency, and learner; only (\delta) relaxes monotonically | (G6.1)--(G6.2); (N/L\to0) versus eventual lower bound | Positive Item 3 lower-bound constant and exact DP inequality | Final theorem | Valid as a conditional interface; no unconditional claim exported |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| (G_C,m_C,h_{C,Q}), cost/risk/atom certificate | `assump:polynomial-global-stability` | G1 / `step_001`; conditional theorem premise | Primitive profile -> G1 | primitive | Valid; explicit conditional source |
| Recoded and decoded BLM learner plus raw bound (G1.4) | G1 / `step_001`; audited Theorem 17 wrapper | G2 and G6 | Primitive profile -> G1 -> G2/G6 | derived | Valid; source-convention and zero-residual bridges exposed |
| Universal (K_a), `(SC)`, exact (N_a), padded learner | G2 / `step_002` | G4 and G6 | G1 -> G2 -> G4/G6 | derived | Valid |
| Exact (T_a,\delta_a) and `(LD)` | G3 / `step_003` | G5 and G6 | Definitions -> G3 -> G5/G6 | derived | Valid |
| (q_\kappa,T_\kappa,N_\kappa=L_\kappa^{o(1)}), (N_\kappa=o(L_\kappa)) | G4 / `step_004` | G6 | Item 1/`(SP)`/counting + G2/G3 -> G4 -> G6 | derived | Valid |
| `(PN)` for all fixed (\rho>0) and (\rho=3) allowance comparison | G5 / `step_005` | G6 | G3 + exact (N_a) + Item 1 -> G5 -> G6 | derived | Valid |
| Conditional universal-nonexistence theorem | G6 / `step_006` | Final theorem assembly | G1--G5 -> G6 -> final claim | derived | Valid; retains conditional provenance |

## Early Obstruction And Repair Plausibility

- **Contract contradiction:** None. The attempted theorem repeats the exact setting, sequence quantifiers, learner scope, privacy mode, rates, and conditional progress label.
- **Theorem-critical mechanism witnesses:** Present for all six steps. The nonvacuous sources are the primitive accurate atom plus audited BLM conversion; exponent slack and (1+T); the explicit (u(L)) exponent; full `(SP)` plus finite-class counting; exponential domination with independent (u\to\infty); and (N/L\to0) plus an eligible learner.
- **Source-to-claim adequacy:** Passed at obstruction level. The exact v3 theorem supplies the correct arbitrary-output PAC/DP conversion and two-term dependence. Recoding supplies equality, not an approximation. No source is asked to prove the primitive profile or a downstream asymptotic.
- **Residual-to-target adequacy:** Passed. Recoding and padding have zero residual. All scalar bridges use the exact (q,L,T,N,\delta) consumed by the theorem. No transformed, weighted, population, reference, or surrogate object lacks a same-target bridge.
- **Exported-interface feasibility:** Passed at diagnostic granularity. Equations (G2.2)--(G2.7), (G4.1)--(G4.10), and (G5.1)--(G5.8) name each raw control, defect class, dominance relation, ceiling effect, and downstream target.
- **Generated-condition provenance:** Passed. There is no realized good event, stability trajectory, recurrence, boundedness condition, or local-validity condition. Every derived learner, schedule, rate, and privacy certificate has a prior producer and legal dependency path.
- **Scope accumulation:** Passed. The source's finite construction is covered by Theorem 17. Later claims are pointwise eventual comparisons; neither privacy loss nor failure probabilities are composed across (\kappa). In `(PN)`, the potentially arbitrary (x_\kappa) defect has the finite budget (\sup_{x\geq1}F_\rho(x)), and the independent factor (H_\rho(u_\kappa)) vanishes.
- **Noncircular closure:** Passed. The primitive atom precedes G1; the raw bound precedes `(SC)`; the schedule precedes `(PN)`; Item 1/`(SP)` precede `(AS)`; and both rate certificates precede the contradiction. Neither private learnability nor Item 3's failure is used to produce itself.
- **Entry and boundary stress:** Passed. The one-shot proof has no recursive first update. The relevant activation traces are exact: at (q=1), (\eta=1); at (L=0), (u=1); on bounded-(q) sequences, (u(L_\kappa)) is active before G4/G5 consume it; at (d=0), (G4.1) remains legal; on an ignored-coordinate replacement, padded output laws coincide.
- **Dependence and mode upgrade:** None is unsupported. Fixed-distribution source wording is converted to a distribution-free learner through the source algorithm's dependence only on fixed (G_C) and public parameters. Fixed-(\rho) limits are not made uniform in (\rho). Pointwise fixed-sample DP/PAC is not upgraded to an all-time guarantee.
- **Baseline invariance:** Passed. Binary risk/output scope, padded PAC/DP parameters, and the bounded-(q) privacy/sample conclusions are preserved exactly.
- **Same-setting repair plausibility:** No repair is presently needed. A local mistake in a displayed inequality or source instantiation that preserves the accepted interfaces belongs to the corresponding `/proof-step`. A need to change a step claim, dependency, schedule, generated-output interface, theorem scope, or conditional conclusion would instead require `/proof-sketch`. There is currently no `sketch/interface defect` or candidate `idea/theorem-contract defect`.

## Global Gaps And Hard Steps

There is no unresolved global link, missing producer-consumer flow, missing source, sketch/interface defect, or candidate idea/theorem-contract defect. The following local proof work remains. Every item is classified `step-local` under the unchanged accepted sketch.

1. **`step_001`: exact BLM wrapper.** Provisional units: a source-restatement/cited-result application for arXiv:2003.00563v3 Theorem 17; a binary recoding lemma proving (G1.1)--(G1.2); a replacement-adjacency and postprocessing lemma; and a distribution-free quantifier wrapper showing that one fixed (G_C) produces one fixed learner for all realizable (Q). Mechanism witness: the nonzero primitive atom and exact source interface in (G1.3)--(G1.4).
2. **`step_002`: `(SC)` and exact padding.** Provisional units: a substitution lemma yielding (G2.1); a termwise domination lemma with explicit (D_a); a universal-(K_a) proposition; a ceiling bound; and a prefix-padding PAC/DP lemma. Mechanism witness: (b-2a=2), (T\geq x), and the zero-residual projection in (G2.2)--(G2.8).
3. **`step_003`: `(LD)`.** Provisional units: a scalar range/monotonicity lemma for (u); the exact logarithm identity; and a bounded-(q) activation statement. Mechanism witness: the explicit (u(L)) term in (G3.1)--(G3.2).
4. **`step_004`: `(AS)`.** Provisional units: an exact-quantifier VC subpower lemma; a finite-class Littlestone counting lemma; a log-star subpower lemma; a sum/fixed-power propagation lemma; a ceiling-aware (N_a) lemma; and a bounded-(q), (d=0) boundary proposition. Mechanism witness: the exponent allocations in (G4.1)--(G4.11). This is the highest-risk direct derivation because a quantifier reversal or an implicit (q_\kappa\to\infty) assumption would invalidate the theorem.
5. **`step_005`: `(PN)` and the source allowance.** Provisional units: an exact ceiling lemma (N\leq2A); a two-factor decomposition; a uniform exponential-polynomial supremum lemma for every fixed real (\rho>0); a vanishing-(u) lemma; and a (\rho=3) allowance corollary. Mechanism witness: (G5.1)--(G5.8), including constant/bounded/oscillating (q).
6. **`step_006`: theorem closure.** Provisional units: a per-class learner instantiation proposition; a two-sided DP monotonicity lemma; a source-allowance specialization; an (o(L))-versus-(\Omega(L)) contradiction lemma; and a source-direction statement retaining `conditional` progress. Mechanism witness: the exact same-target comparison in (G6.1)--(G6.2).

Because no accepted proof-step artifact exists yet, none of these local units can be treated as proved. This is why the status is `PARTIAL_BLOCKED`, not `COMPLETE_DRAFT`. Because every unit has a source-adequate, boundary-tested, scope-compatible interface and legal generated-output flow under the accepted sketch, the status is not `SKETCH_BLOCKED`.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic guidance only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, generated-output flow, mechanism source, theorem scope, quantitative dependence, progress label, or conclusion. Every local unit and cited-result application above must be independently proved or discharged by `/proof-step` and accepted by `/proof-step-review` before proof assembly.

## Suggested Routing

None

Continue with all six accepted proof steps. Begin with `/proof-step step_001` to lock the only external theorem interface, then follow the accepted dependency order; `step_004` and `step_005` deserve the earliest additional scrutiny because they carry the exact sequence quantifiers and bounded-(q) privacy closure.
