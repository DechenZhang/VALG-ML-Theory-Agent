# IDEA_REPORT.md

## Ideas

### Idea 1

- Parent perspective: Perspective 2 - deterministic polynomial dimension bound
- Branch path: perspective_2/idea_2
- Setting: Exact universal Boolean-cube ReLU/SGD protocol with an explicit target-independent, tie-resolved confident feature law of exposed dimension d.
- Goal: Prove the conditional amplification dc(H) <= C*T*S*d, so any d=poly(S,T) confident bound yields a deterministic poly(S,T) bound.
- Notes: Progress type `conditional`; the exact learner gives VC(H)<2T and hence log|H|=O(TS), allowing O(TS) confident maps to be concatenated into one deterministic map.

### Idea 2

- Parent perspective: Perspective 3 - probabilistic/confident dimension relaxation
- Branch path: perspective_3/idea_2
- Setting: Exact depth-two bias-free ReLU/SGD protocol for antipodally odd classes under the primitive high-accuracy condition 2*epsilon<1/(n+1).
- Goal: Prove dc^(1/2)(H)<=dc(H)<=n<=S<=T*S using the deterministic identity feature map.
- Notes: Progress type `material_partial`; ReLU antisymmetrization and a Gordan-Caratheodory witness convert universal small error into exact homogeneous separation, while general depth, non-odd classes, and the unrestricted accuracy regime remain open.

### Idea 3

- Parent perspective: Perspective 1 - exact deterministic linear T*S implication
- Branch path: perspective_1/idea_3
- Setting: Exact universal Boolean-cube ReLU/SGD protocol at fixed constant depth, with a static high-probability robust initialization tube that fixes all hidden gates for every possible labeled sample history.
- Goal: Prove dc_(epsilon+delta_0)(H)<=d_path<=S^L_0 and hence dc_(2 epsilon)(H)<=S^L_0 when delta_0<=epsilon.
- Notes: Progress type `conditional`; a fresh four-route full-target screen found no supported exact proof or counterexample, so this source-endorsed probabilistic and polynomial fallback uses one target-independent Gaussian initialization gate map and remains distinct from P2's confident-map amplification and P3's odd-class identity embedding.
