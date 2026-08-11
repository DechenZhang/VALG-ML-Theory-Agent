# Rigor Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Rigor Audit

- Mathematical derivations: Every theorem-level implication follows from the five primitive assumptions, current accepted step claims, and direct logical assembly. The fixed-span identity gives the exact same-target decomposition, the cALS updates are exact current-block minimizers, the cGD line search terminates from a current-segment Hessian bound, and the two nonnegative monotone objective sequences have finite scalar limits. No global diagnostic artifact is used as proof evidence.
- Statement self-containedness: The main theorem uses only setup notation and the five numbered assumptions. It defines $r_0=1$, $\alpha=1/4$, and $L(r)=r^{5/4}$ inline, states the probability, horizon, norm, uniformity, and constrained-method scope, and contains no appendix-local hypothesis or generated invariant.
- Main theorem constants and notation: The dimension and rank assumptions give
  \[
  \frac{k}{n}\le\frac{r^{5/4}}{8r^{5/4}}=\frac18,
  \qquad
  1-2\frac{k}{n}\ge\frac34,
  \qquad
  \frac12\left(1-2\frac{k}{n}\right)\ge\frac38.
  \]
  The constants $2,1/2,1/4,3/4,3/8$ have explicit provenance and hide no dependence.
- Derivation-over-notation: Proof-local SVD factors, conditional fibers, current Hessian bounds, leakage tensors, and scalar-limit auxiliaries stay in the appendix. No helper symbol substitutes for a boundedness, finiteness, probability, or transfer derivation.
- Explicit-rate contract: The exposed variables $q,\rho,r,n,k,T,M,t$, deterministic bases, probability mode, all-time and asymptotic horizon modes, and Frobenius norm are explicit. The quantitative specialization and probability conversion are displayed rather than absorbed in prose. The empty small-$r$ rank windows make $r_0=1$ valid vacuously where necessary.
- Appendix full derivations: I compared all seven current accepted source proofs against the appendix proof bodies, not by sampling. Step 001 preserves the polynomial-zero-set, Haar uniqueness, conditional-kernel, tensor-lifting, and zero-leakage derivations. Step 002 preserves projector isotropy, the zero-safe Markov calculation, exact complement arithmetic, conditional product, and tower conversion. Step 003 preserves the full Pythagorean and normalized-witness arguments. Step 004 preserves the complete compact-SVD Moore--Penrose minimizer characterization, orthogonal constrained reduction, sequential finite-state induction, descent chain, telescoping budget, and epsilon limit proof. Step 005 preserves polynomial smoothness, compact-segment Hessian control, integral Taylor remainder, explicit dyadic acceptance, finite-index induction, actual-objective transfer, drop budget, and scalar convergence. Step 006 preserves the unconstrained gradient and ALS formulas, tensor-leakage decomposition, reverse-triangle and endogenous-witness calculations, and all scope boundaries. Step 007 preserves the all-index discharge, exact constants, limit passage, pointwise conditional event inclusion, tower averaging, arbitrary-base quantifiers, baseline cases, and final theorem assembly. Any repetition compression cites a complete earlier public derivation with the current substitutions visible.
- Quantifiers and constants: The order is fixed $q>0$; universal admissible $r,n,k$ and deterministic base triple; then smoothing and both independent starts. Uniformity over bases is pointwise with common constants, not one simultaneous event over all triples. The theorem does not change this order or introduce hidden dependence.
- Probability or convergence modes: Given every fixed $T=T_0$, the two initialization spans have the constant product-Haar law, each event has conditional probability at least $1/2$, and their intersection has conditional probability at least $1/4$. The tower property gives the same unconditional $1/4$ bound. Complete trajectories are never asserted independent. The all-time floor is pathwise on the static event, and passing to the already-proved scalar limits uses only order preservation, with no expectation-limit interchange.
- Boundary cases: The proof covers $T=0$, zero orthogonal residual, nonzero $T$ on the joint event, $k/n=1/8$, empty small-$r$ rank windows, singular and zero Khatri--Rao designs, nonunique minimizers, zero block drops, zero cGD gradient, zero objective, arbitrarily large finite iterates, shrinking Armijo steps, and every normalized-witness zero denominator. Moore--Penrose formulas remain exact at singular designs, and Armijo termination uses no global factor or Hessian bound.
- Hidden subclaims: No theorem-critical assertion is left behind an informal appeal to smoothness, standard least squares, concentration, boundedness, or convergence. Public theorem-style dependencies use named results and numbered assumptions; labels are unique and resolve, no external citation is used, and the current post-source compile log is warning-free.
