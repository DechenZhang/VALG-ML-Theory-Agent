# Adversarial Proof Review

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

## Adversarial Audit

- Weakest theorem-level claim: The vulnerable closure is the exact joint probability-$1/4$ statement together with existence of both finite scalar limits and the all-time $3/8$ objective floor, uniformly for each unrestricted deterministic base triple. The proof survives replacement by the exact accepted interfaces: product-Haar span events conditional on the shared $T$, exact fixed-span Pythagoras, singular-design sequential ALS descent, pointwise Armijo well-definedness, and scalar order preservation under limits. No complete-trajectory independence, factor convergence, conditioning, or favorable smoothing event is used.
- Standalone theorem attack: Reading only the setup, preliminaries, and main theorem exposes every primitive assumption, the probability mode, the horizon and norm modes, the constants $r_0=1$, $L(r)=r^{5/4}$, $1/4$, $3/4$, and $3/8$, pointwise rather than simultaneous uniformity over deterministic bases, and the restriction to the two fixed-one-mode constrained procedures. The theorem does not assume a generated trajectory property and does not overstate a result for ordinary unconstrained ALS or full-variable GD.
- Weakest step-level claim: The highest-risk local claims are `step_004` at singular or zero Khatri--Rao designs and `step_005` when gradients or Hessians are arbitrarily large and Armijo steps shrink without a uniform lower bound. The compact-SVD calculation gives the exact minimum-Frobenius-norm block minimizers at every design rank, and the sequential $X$--$Y$--$Z$ inequalities yield monotonicity. For cGD, the Hessian is bounded only on the current finite gradient segment; a finite dyadic trial satisfies $L_t\eta\le1$, including the zero-gradient and zero-Hessian cases. Induction gives every finite iterate, and nonnegative monotone objectives give finite scalar limits without parameter boundedness.
- Candidate counterexamples or stress cases: The attacks $T=0$, nonzero $T$ with zero orthogonal residual, zero objective, zero or huge gradients, vanishing Armijo step sizes, zero/singular Khatri--Rao designs, nonunique ALS minimizers, arbitrarily ill-conditioned or large deterministic bases, cancellation among CP terms, and exact complement cancellation all remain inside stated branches. At $T=0$ no normalized witness is used and the target is zero. On the joint event with $T\ne0$, the $3/4$ residual margin makes both witness denominators positive. Singular designs retain finite Moore--Penrose minimizers, while factor size never enters the static orthogonal floor.
- Explicit-rate stress cases: At $k/n=1/8$, the proof gives exactly $1-2k/n=3/4$ and hence objective fraction $3/8$. The two conditional probability-$1/2$ events multiply only after conditioning on the shared $T$, and the tower property preserves $1/4$ unconditionally. Empty integer rank windows for small $r$ make the choice $r_0=1$ vacuous there but not false, as the theorem and appendix explicitly state. No hidden constant depends on $r,n,k,q,\rho,T$, the bases, starts, method, horizon, factor norms, design conditioning, or line-search history.
- Appendix self-contained attack surface: Every accepted non-atomic local unit and every target-step assembly is represented by paper-facing lemmas or propositions with substantive proofs. The appendix includes the Gaussian-rank and Haar derivations, constant conditional kernel, zero-safe Markov branch, exact residual bridge, singular least squares, sequential sweep induction, current-segment Taylor estimate, finite dyadic acceptance, all-index induction, non-transfer algebra, probability conversion, and final limit assembly. No proof depends on internal workflow files, bare step/unit identifiers, public claim/hypothesis/invariant environments, external citations, or omitted standard-result hypotheses. The retained warning-free compile log postdates all current TeX and support files and reports no unresolved references, duplicate labels, or box warnings.
- Scope or mode upgrade attacks: Shared-$T$ dependence is handled conditionally rather than incorrectly replaced by unconditional independence. The static initialization event needs no time union bound; fixed-span membership has exactly zero leakage; the floor is reapplied at every finite iterate; and only already-proved scalar limits are taken, with no expectation-limit interchange. Uniformity over bases is pointwise with common constants, not one simultaneous event. The unconstrained first-update formulas and the generated complement term $\Lambda_t$ are used only to certify non-transfer, so constrained fixed-span logic is never exported to unconstrained ALS or GD.
- Remaining risk: None at the acceptance level. The result is deliberately a `material_partial` theorem for constrained algorithms and leaves the original unconstrained problem open; that limitation is explicit in the setting, theorem, proof sketch, appendix, and final proof.
