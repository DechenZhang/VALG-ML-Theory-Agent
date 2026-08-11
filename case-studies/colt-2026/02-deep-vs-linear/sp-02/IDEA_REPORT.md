# IDEA_REPORT.md

## Ideas

### Idea 1

- Parent perspective: Perspective 1 - deterministic dimension-complexity upper bound
- Branch path: perspective_1/idea_3
- Setting: Universal adaptive randomized unrestricted-SQ learner with a fixed polynomial catalog covering only outputs reached under the nearest-grid exact-center valid policy.
- Goal: Use finite minimax to construct one deterministic exact map and prove `dc(H) <= L <= B(1+m/tau^2)^k`.
- Notes: `conditional`; preserves the full learner premise and exact deterministic target while requiring less output compression than an all-valid-execution terminal catalog.

### Idea 2

- Parent perspective: Perspective 2 - deterministic exact embedding derandomization
- Branch path: perspective_2/idea_2
- Setting: Universal adaptive randomized unrestricted-SQ learner with static polynomial-rank seed-averaged terminal responses.
- Goal: Under `r_A <= B(1+m/tau^2)^k`, use fixed-space minimax to construct one deterministic exact map with `dc(H) <= r_A`.
- Notes: `conditional`; preserves the source quantifiers and exact deterministic target while making the polynomial rank certificate explicit.

### Idea 3

- Parent perspective: Perspective 3 - adversarial response-tree sign-rank compression
- Branch path: perspective_3/idea_2
- Setting: Universal adaptive randomized unrestricted-SQ learner whose possible terminal predictors lie in one instance-independent catalog of size `L <= B(1+m/tau^2)^k`.
- Goal: Use finite-simplex minimax to construct one deterministic exact feature map and prove `dc(H) <= L <= B(1+m/tau^2)^k`.
- Notes: `conditional`; preserves arbitrary domains, every valid reply policy, unrestricted queries, learner randomness, and deterministic exact signs while isolating terminal-output diversity as the added condition.
