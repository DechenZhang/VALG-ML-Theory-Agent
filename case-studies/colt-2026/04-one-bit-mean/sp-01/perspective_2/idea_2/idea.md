# Idea

## Perspective Anchor

- Tuple: (analysis_target: minimax_nonadaptivity_lower_bound, model_class: fully_nonadaptive_arbitrary_measurable_one_bit_protocol, data_assumption: unrestricted_D(k,lambda,sigma)_finite_k_moment_class, regime: universal_three_k_regime_PAC_scope, algorithm: general_algorithm)

## Added Dimensions

- Primitive conditional data specialization: fix the known unit-variance generalized-Gaussian shape beta = 3/2 and restrict Nature to its location-scale family, with unknown location and unknown scale. This is a checkable likelihood-shape condition taken directly from Kumar and Vatedka (2026), not an information-contraction assumption.
- Source-class embedding: if Z has this standardized density and m_k = (E|Z|^k)^(1/k), set tau_max = sigma/m_k and allow tau in [tau_max/2,tau_max]; then Law(mu + tau Z) belongs to D(k,lambda,sigma) for every mu in [-lambda/2,lambda/2].
- Claim mode: compare the leading small-error PAC sample constants at each fixed confidence delta in a source-explicit high-confidence range. The non-adaptive side still ranges over every randomized, non-identical, arbitrary measurable precommitted one-bit query; the comparator is the literature's one-transition adaptive protocol.

## Setting

- Context: Fix k > 1, lambda >= sigma > 0, and beta = 3/2. Let
  
  ```text
  f_beta(z) = beta/[2 a_beta Gamma(1/beta)] exp(-(abs(z)/a_beta)^beta),
  a_beta = [Gamma(1/beta)/Gamma(3/beta)]^(1/2),
  ```
  
  so Z has mean zero and variance one. Write m_k = (E|Z|^k)^(1/k), tau_max = sigma/m_k, and
  
  ```text
  G(k,lambda,sigma) = {Law(mu + tau Z):
      mu in [-lambda/2,lambda/2], tau in [tau_max/2,tau_max]}.
  ```
  
  Every member of G(k,lambda,sigma) is an explicit member of D(k,lambda,sigma), but the comparative theorem is intentionally conditional on this known shape and location-scale form.
- Model: A fully non-adaptive protocol presamples any public seed R independent of the data and, conditional on R, fixes arbitrary measurable and possibly non-identical binary encoders pi_t. Private encoder randomness is allowed, so pi_t may be any Markov kernel from the real sample line to {0,1}. The decoder observes R and all n bits. This includes measurable sets with arbitrarily many components and global coding patterns.
- Data: The X_t are independent from one unknown member of G(k,lambda,sigma). The protocol knows k, lambda, sigma, beta, and the allowed scale interval, but not mu or tau. The hard location pair is chosen independently of every protocol seed and lies in the interior of [-lambda/2,lambda/2] once epsilon/tau_max is sufficiently small.
- Algorithm: For the lower bound, use Kumar and Vatedka's query-uniform squared-Hellinger envelope. With phi = -log f_beta, h(x) = 2 phi'(x) f_beta(x), h_star = max_{x >= 0} h(x), and
  
  ```text
  T_beta = integral_0^h_star phi'(h^(-1)(u)) h^(-1)(u) du,
  ```
  
  their theorem gives, for every randomized measurable binary encoder and the local pair mu_plus/minus = mu_0 plus/minus v tau,
  
  ```text
  H^2(P_plus^pi, P_minus^pi) <= v^2 (T_beta + o(1))
  ```
  
  as v tends to zero, uniformly over the encoder. Conditional product affinity and integration over the common seed extend this exact distribution-specific bound to public randomness and non-identical queries. Le Cam testing then converts it to a PAC sample lower bound. The comparator is the two-stage centered-threshold estimator of Kumar and Vatedka, whose normalized error is asymptotically Gaussian with variance tau^2/[4 f_beta(0)^2 n].
- Regime: Let epsilon/tau_max tend to zero while delta is fixed. Define
  
  ```text
  a_delta = -(1/2) log(4 delta (1-delta)),
  z_delta = Phi^(-1)(1-delta/2).
  ```
  
  Retain those delta for which a_delta/T_beta > z_delta^2/f_beta(0)^2; the published beta = 3/2 constants verify a nonempty range (in particular delta = 0.05). The limit holds with k, lambda, sigma, beta, and delta fixed; horizons are deterministic, the loss event uses scalar absolute error, and probability is joint over samples and all protocol randomness. Lambda, sigma, and k enter explicitly through the source embedding, but this conditional light-tailed family does not reproduce the three different unrestricted-moment refinement rates.

## Goal

- Theorem type: Conditional arbitrary-query local-PAC interaction separation.
- Informal statement: Let N_NA(epsilon,delta) be the least fixed horizon of a protocol that is uniformly (epsilon,delta)-accurate over G(k,lambda,sigma), where the infimum includes every randomized, non-identical, arbitrary measurable fully non-adaptive one-bit protocol. Let N_A(epsilon,delta) denote the horizon of the stated one-transition comparator. Prove
  
  ```text
  liminf_(epsilon/tau_max -> 0)
      epsilon^2 N_NA(epsilon,delta)/tau_max^2
      >= a_delta/(4 T_beta),

  limsup_(epsilon/tau_max -> 0)
      epsilon^2 N_A(epsilon,delta)/tau_max^2
      <= z_delta^2/[4 f_beta(0)^2].
  ```
  
  Hence the first constant is strictly larger throughout the stated confidence range. The first display follows by testing the locations mu_0 plus/minus 2 epsilon, applying the encoder-uniform Hellinger bound to each precommitted bit, and retaining the common public-seed marginal. This is a strict leading-constant interaction gap for arbitrary measurable queries under the stated primitive data condition; it is not an order separation for r_k.

## Notes

- Parent foundation papers: One-Bit Distributed Mean Estimation with Unknown Variance (arXiv:2501.18502); Order-Optimal Sequential 1-bit Mean Estimation in General Tail Regimes (arXiv:2604.07796)
- Transfer map: preserves the first paper's randomized-encoder Hellinger envelope and adaptive constant, embeds its explicit location-scale family into the second paper's moment class and one-bit model, and adds the common-seed product-affinity and PAC-testing conversion.
- Source alignment: Preserves one bit per independent sample, arbitrary measurable non-identical precommitted queries, public and private randomness, bounded source means, moment-class membership, and absolute-error PAC testing. The known beta = 3/2 likelihood, location-scale restriction, small-error leading-constant mode, and restricted fixed-confidence range are explicit target-changing weakenings. Uniform finite-sample PAC control over all D(k,lambda,sigma), every delta, the exact r_k dependence, and a three-regime order separation all remain open.
- Progress type: conditional
- Materiality: The branch gives a genuine arbitrary-query interaction gap without limiting the topology or component count of query sets. It identifies a literature-proved distribution-shape mechanism under which global measurable coding and query randomization still obey a uniform information bound, while making no claim that a constant gap negates the source's order-optimal existence statement.
- Significance: The candidate survives the two failures that defeated the full lower-bound routes: its hard pair is independent of the realized query seed, and its per-bit control holds for every randomized measurable binary kernel rather than only local or frequency-misaligned sets.
- Feasibility: The theorem-critical Hellinger envelope, the beta = 3/2 strict-gap constants, and the asymptotic-normal adaptive comparator are literature-derived from arXiv:2501.18502. Product affinity for independent non-identical bits, common-marginal conditioning on R, and the estimator-to-test reduction are standard. The moment embedding is the direct identity E|tau Z|^k = tau^k m_k^k. Han et al. (DOI:10.1109/TIT.2021.3108952) and Barnes et al. (arXiv:1902.02890) provide compatible arbitrary-channel geometric lower-bound frameworks, but no unproved generic contraction from those papers is assumed here.
- Consistency: The likelihood-shape condition is primitive and directly checkable, all hard laws lie in the advertised source class, and the arbitrary-query protocol model is unchanged. The query-uniform information inequality is a cited theorem specialized to the actual f_beta, not a generated invariant or a restatement of the desired interaction conclusion. This branch is distinct from the failed universal-contraction route because it openly pays for the exact regularity that produces the contraction and states the unrestricted-moment gap.
