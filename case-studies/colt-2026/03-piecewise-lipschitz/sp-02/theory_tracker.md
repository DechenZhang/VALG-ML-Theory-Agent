# Theory Tracker

## Attempted Ideas

| Perspective | Idea attempt | Setting | Goal | Setting Signature | Goal Signature | Status | Best Score | Reasons |
|-------------|--------------|---------|------|-------------------|----------------|--------|------------|---------|
| Perspective 1 | idea_1 | Anchored unit-range one-variable Pfaffian vector on `Theta=[c-h,c+h]` with `G_1=1`, chain/output coefficient budgets `B_P,B_Q`, the Balcan `q,M,Delta` convention, and arbitrary correlated cube-supported density-capped coefficients; central and affine hyperplane sweeps. | Prove `C_D^Pf <= A N Delta B_Q(1+qB_P)/(sqrt(2)h)` through a projective-speed certificate, account for the `theta/delta` example, and derive the exact monic-polynomial constant from the theorem's affine pivot clause. | `model=anchored_unit_range_pfaffian_vector;data=cube_joint_density_cap;algorithm=central_and_affine_hyperplane_sweep;regime=uniform_laws_and_intervals;refinements=G1_anchor,BP_BQ,h_inverse,Balcan_q_M_Delta` | `theorem=full_sufficient_root_anticoncentration_with_complexity_certificate_and_exact_affine_monic_recovery;metric=C_D_Pf_and_projective_speed;claim=explicit_linear_interval_bound` | Accept | 9 | Contract-valid split proof accepted after assembly attempt 2; all final artifact, current accepted-sketch worker-provenance, budget, build, and restricted-copy verification gates passed. |
| Perspective 2 | idea_1 | Anchored derivative-closed affine Pfaffian dictionary `tilde F=(F_0,F)` on a compact interval, with a supplied polynomial matrix certificate `tilde F'=B tilde F` and coefficient height `Lambda_hat`; arbitrary correlated cube-supported density-capped random coefficients. | Prove a uniform affine swept-area bound controlled polynomially by `Lambda_hat`, its sharper homogeneous projective specialization, quantitative `theta/delta` scaling, and exact two-pivot monic-polynomial recovery from the same area theorem. | `model=anchored_derivative_closed_affine_pfaffian_dictionary;data=cube_joint_density_cap;algorithm=matrix_certificate_and_affine_hyperplane_sweep;regime=uniform_laws_intervals_and_polynomial_instance_control;refinements=B_matrix,Lambda_hat,Balcan_q_M_Delta` | `theorem=full_affine_root_anticoncentration_with_derivative_closure_certificate_and_exact_monic_recovery;metric=affine_sweep_velocity_and_C_D_Pf;claim=explicit_linear_interval_bound` | Accept | 9 | Contract-valid split proof accepted after assembly attempt 4; all final artifact, exhaustive 12-step and 49-unit aggregate review, current accepted-sketch worker-provenance, budget, restricted-copy, and standalone cache-only build gates passed. |
| Perspective 3 | idea_1 | `C^1` affine Pfaffian family `b+<alpha,F>` with primitive no-forced-root condition, root-feasible set `K_R`, and adaptive minimizing-coordinate pivot speed `Gamma_piv`; arbitrary correlated density-capped lower coefficients. | Prove `Pr(root in I) <= kappa(2R)^(N-1) Gamma_piv * length(I)` uniformly and recover the exact monic-polynomial constant by two adaptive charts, while leaving general Pfaffian instance-complexity control of `Gamma_piv` open. | `model=nondegenerate_affine_pfaffian_family;data=cube_joint_density_cap;algorithm=adaptive_coordinate_pivot_sweep;regime=uniform_laws_and_intervals;refinements=no_forced_root,K_R,Gamma_piv` | `theorem=material_partial_affine_pivot_anticoncentration_with_exact_monic_recovery;metric=Gamma_piv;claim=explicit_linear_interval_bound_without_general_complexity_certificate` | Accept | 9 | Contract-valid split proof accepted after sketch attempt 3 and assembly attempt 2; all final artifact, exhaustive six-step review, current accepted-sketch worker-provenance, budget, standalone-build, material-partial labeling, and restricted-copy verification gates passed. |

Allowed `Status` values:

- `In_progress`
- `Accept`
- `Fail`

When the controller appends a new approved idea row, it should write `Perspective`, `Idea attempt`, `Setting`, `Goal`, `Setting Signature`, and `Goal Signature`, initialize `Status = In_progress`, leave `Reasons` empty, and initialize `Best Score` as empty or `0` until the first proof review is recorded.

When `/subagent-idea-generator` returns `NO_VIABLE_IDEA`, append one failed row for the consumed `idea_N` slot even though no `idea.md` was finalized. Use `Setting = N/A`, `Goal = N/A`, `Setting Signature = N/A`, `Goal Signature = N/A`, `Status = Fail`, `Best Score` empty or `0`, and `Reasons = NO_VIABLE_IDEA: <compact gate-failure reasons>`.

When an approved `idea.md` fails the cross-perspective duplicate gate, append one failed row for the consumed `idea_N` slot. Fill `Setting`, `Goal`, `Setting Signature`, and `Goal Signature` from the generated `idea.md` using the same normalized summaries used for viable idea rows, set `Status = Fail`, set `Best Score` empty or `0`, and set `Reasons = DUPLICATE_IDEA: matches <perspective_M/idea_N>; <compact duplicate reason>`.

If a filled tracker row needs to record a failure reason, keep the controlled status label as `Fail` and record the reason in `Reasons` rather than inventing a new status value.

When `Status = Fail`, `Reasons` should store a one-line summary of the abandonment reason.

`Setting Signature` should store a normalized summary of the concrete setting, including model, data, algorithm, regime, and theorem-critical refinements.

`Goal Signature` should store a normalized summary of the theorem target, including theorem type, target metric, and claim shape.

The signature fields are controller-written fast filters for duplicate and branch-memory lookup; the corresponding branch-local `idea.md` artifacts remain the source of truth. Rows with `NO_VIABLE_IDEA` reasons and `N/A` signatures are budget and failure-memory rows only; do not treat their signatures as duplicate-detection keys. Rows with `DUPLICATE_IDEA` reasons keep real signatures and should be used as duplicate-avoidance memory while still counting as failed consumed slots.
