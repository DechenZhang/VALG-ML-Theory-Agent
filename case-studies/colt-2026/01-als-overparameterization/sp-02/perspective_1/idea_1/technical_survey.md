# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`, iterative CP class containing the specified Jacobi ALS and balanced factor GD maps.
- Current idea: `idea_1`, ambient Khatri--Rao residual witness with descent-controlled leakage.
- Setting / goal summary: Under the exact unconditional setting in `setting.md`, prove with probability bounded below uniformly in `$r,n,k$` and the deterministic well-conditioned base that both method-specific losses converge to a positive constant fraction of \(\|T\|_F^2\) for every \(r<k\le r^{5/4}\).

## Candidate Frameworks

### Framework 1: Moving ambient residual span plus a finite leakage budget

- Source papers: Kolda and Bader, "Tensor Decompositions and Applications," SIAM Review 51(3), 2009; Arvanitakis, Srinivas, and Vijayaraghavan, "Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions," NeurIPS 38, 2025.
- Applicability to current branch: The CP matricization and Khatri--Rao identities use the branch convention, and the `$r^2$`-scale feature bottleneck motivates the proposed coefficient deficit. The cited ALS work is an upper-bound analysis for a different verified descent/stability interface; it does not state the branch's lower-bound recurrence for the moving ambient span, does not cover the exact simultaneous three-block Jacobi map here, and does not supply a common ALS/GD all-time leakage certificate.
- Proof roadmap:
  1. Lower-bound the initial ambient distance from `$T$` to the span of the `$k$` iid Gaussian rank-one initialization tensors.
  2. Bound one-step loss of this distance by a multiple of represented-tensor movement.
  3. Charge movement to objective descent and sum over all time.
- Key lemmas / ingredients: Conditional isotropy of \(x_i\otimes y_i\otimes z_i\); concentration of their Gram matrix; projector perturbation identities; MTTKRP normal equations.
- Main transfer challenges: The projector distance changes at first order under generic rank-one subspace rotation whereas the proposed charge \(\ell_t=\|S_{t+1}-S_t\|_F^2\) is quadratic. Represented-tensor movement does not control component-span rotation in the presence of cancellation. The simultaneous Jacobi ALS update has no source-valid descent inequality.
- Potential repair techniques and supporting references:
  - Technique: Replace the moving projector by a fixed dual witness and seek signed or telescoping coefficient evolution.
  - Supporting reference: Kolda and Bader (2009) for the exact CP/MTTKRP identities.
  - Why it may help: A fixed witness avoids differentiating a moving projector, but only gives a first-order path-length charge; no all-time finite path-length source is available in the current setting.
- Disposition: `rejected`
- Branch notes: This is the parent idea's intended framework. Its central exported recurrence is not supported by the raw definitions and has a concrete first-variation obstruction. Treating a future proof step as the missing source would violate the mechanism-witness and accumulation gates.

### Framework 2: Objective descent followed by analytic/Kurdyka--Lojasiewicz convergence

- Source papers: Lee, Simchowitz, Jordan, and Recht, "Gradient Descent Only Converges to Minimizers," COLT 2016; Wang, Wu, Lee, Ma, and Ge, "Beyond Lazy Training for Over-parameterized Tensor Decomposition," NeurIPS 33, 2020.
- Applicability to current branch: Polynomial CP least squares is analytic, so a bounded GD trajectory with sufficient decrease and a relative-error inequality could be treated by a KL argument. The cited results do not verify those hypotheses for the exact fixed-step balanced GD map, and they do not apply to the discontinuous Moore--Penrose Jacobi ALS map. Neither paper supplies convergence to a positive loss for this branch.
- Proof roadmap:
  1. Derive an all-time factor self-bound and a uniform local smoothness constant.
  2. Prove sufficient decrease and square-summability of parameter increments.
  3. Apply a current-notation KL convergence theorem and transfer to objective convergence.
- Key lemmas / ingredients: Descent lemma on bounded sets; relative-error inequality; KL finite-length argument.
- Main transfer challenges: The balancing gauge equalizes the three norms within each component but does not bound component norms from \(F\), because different rank-one components can cancel. The Jacobi ALS map need not decrease \(F\), and the pseudoinverse loses continuity at rank changes. Thus the prerequisites are generated invariants with no noncircular producer.
- Potential repair techniques and supporting references:
  - Technique: Add a coercive regularizer, sequential block schedule, line search, or projection.
  - Supporting reference: Sharan and Valiant, "Orthogonalized ALS," ICML 2017.
  - Why it may help: These modifications can supply conditioning or descent, but each changes the algorithm fixed by `setting.md` and therefore is an idea-level rather than sketch-level repair.
- Disposition: `rejected`
- Branch notes: Analyticity alone does not prove boundedness, sufficient decrease, finite length, or convergence for either exact map.

### Framework 3: Direct ambient initialization certificate

- Source papers: Bhaskara, Charikar, Moitra, and Vijayaraghavan, "Smoothed Analysis of Tensor Decompositions," STOC 2014; Kolda and Bader (2009).
- Applicability to current branch: Conditioning on any realized `$T$`, iid Gaussian initialization is independent and isotropic in the ambient tensor Hilbert space. This directly makes the initial rank-one span almost orthogonal to `$T$` when \(k\ll n^3\), uniformly over the base, without whitening the planted tensor.
- Proof roadmap:
  1. Let \(v_i=x_{i,0}\otimes y_{i,0}\otimes z_{i,0}\), \(G=(\langle v_i,v_j\rangle)\), and \(h_i=\langle T,v_i\rangle\).
  2. Use \(\mathbb E[h_i^2\mid T]=\|T\|_F^2/n^3\) and concentration of `$G$` about the identity to bound \(\|\operatorname{Proj}_{\operatorname{span}(v_i)}T\|_F^2=h^\mathsf{T}G^\dagger h\).
  3. Obtain \(\Delta_0\ge (1-o(1))\|T\|_F\) with constant or high conditional probability.
- Key lemmas / ingredients: Gaussian isotropy, chi-square norm concentration, concentration of products of independent Gaussian inner products, and the exact projector formula.
- Main transfer challenges: This certificate is only an entry margin. It supplies no invariant that prevents adaptive updates from rotating the component span toward `$T$`, and hence cannot support the final theorem by itself.
- Potential repair techniques and supporting references:
  - Technique: Combine with a valid trajectory-specific fixed-witness conservation law.
  - Supporting reference: No such conservation law was found in the approved literature survey for either exact update map.
  - Why it may help: A conservation law would be the needed mechanism source, but adding it as an assumption is forbidden and no primitive condition currently implies it.
- Disposition: `backup`
- Branch notes: This is a sound local ingredient, but selecting it as a complete framework would hide the unresolved all-time reachability obligation.
