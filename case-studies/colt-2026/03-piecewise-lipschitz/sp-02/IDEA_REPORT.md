# IDEA_REPORT.md

## Ideas

### Idea 1

- Parent perspective: Perspective 1, projective hyperplane sweep for uniform interval root anti-concentration of nonvanishing one-dimensional Pfaffian vectors.
- Branch path: `perspective_1/idea_1`
- Setting: On `Theta=[c-h,c+h]`, write `F(theta)=G((theta-c)/h)` using the Balcan--Nguyen--Sharma triangular Pfaffian convention. Require the literal anchor `G_1=1`, unit-range chain coordinates, and static coefficient budgets `B_P,B_Q`; allow every correlated coefficient law on `[-R,R]^N` with joint-density cap `kappa`.
- Goal: Certify `Gamma_proj(F) <= sqrt(N) Delta B_Q(1+qB_P)/h` and hence `C_D^Pf <= A N Delta B_Q(1+qB_P)/(sqrt(2)h)`, while the theorem's own affine coordinate-pivot clause recovers exactly `kappa(2R)^(d-1)(d+R d(d-1)/2)|I|` for monic degree-`d` polynomials.
- Notes: Progress type `full`. The raw budgets expose the `1/delta` scale in Counter-example 1; no coefficient independence or generated conditioning bound is assumed. Cross-perspective duplicate gate: passed.

### Idea 2

- Parent perspective: Perspective 2, polynomial instance-complexity control of projective conditioning for scale-annotated Pfaffian vectors.
- Branch path: `perspective_2/idea_1`
- Setting: An anchored affine Pfaffian dictionary `tilde F=(F_0,F)` satisfies the primitive static identity `tilde F'=B tilde F` for a supplied polynomial matrix `B`; its coefficient height `Lambda_hat` records the metric scale. Coefficients may follow any correlated cube-supported law with joint-density cap `kappa`.
- Goal: Bound the affine sweep velocity by `(1+NR^2)Lambda_hat`, obtain the sharper homogeneous bound `C_D^Pf <= A sqrt(N/2)Lambda_hat`, and recover the exact monic-polynomial constant through the same affine area formula.
- Notes: Progress type `full`. The certificate contains Counter-example 1 through `Lambda_hat=1/delta`; derivative closure is distinct from Perspective 1's unit-range coefficient-envelope normalization. Cross-perspective duplicate gate: passed.

### Idea 3

- Parent perspective: Perspective 3, exact affine recovery of the monic-polynomial baseline.
- Branch path: `perspective_3/idea_1`
- Setting: A `C^1` affine Pfaffian family `b+<alpha,F>` satisfies only the primitive no-forced-root condition. On the root-feasible set `K_R`, a measurable adaptive chart chooses the coordinate minimizing the static pivot speed `Gamma_piv`.
- Goal: Prove `Pr(root in I) <= kappa(2R)^(N-1)Gamma_piv|I|` uniformly over laws and intervals and derive the exact monic constant by constant-term and degree-`d-1` pivots.
- Notes: Progress type `material_partial`. The theorem resolves the exact affine specialization under the weakest supported chart condition; polynomial instance-complexity control of `Gamma_piv` remains open. Cross-perspective duplicate gate: passed.
