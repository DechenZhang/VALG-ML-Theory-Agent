# Assembly Report

## Status

COMPLETE

## Binding Inputs

- Setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Accepted sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Accepted sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Accepted global proof/review SHA-256: `80ef3512062b3830473c9e8b50e72365af34c4295b0246624e41a8871b98b5a0` / `a93919745b59b9ea7f5ce007c414343b7c91aa83c7988ff3a5cdde399857bf29`
- Repair-trigger aggregate review SHA-256: `1371cfb3c26a2dd4ce2b03a1d9e6e3faf908f4cd1b20ca92f5fe18c495523c2f`

## Coverage

All thirteen required sketch steps have an accepted proof and accepted review:

| Step | Proof SHA-256 | Review SHA-256 |
| --- | --- | --- |
| 001 | `467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207` | `da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c` |
| 002 | `08962ad6eb259d8ef386cf05bafc59b0384dd2de1111f3fe8838cd95d0b19222` | `2c32c95ed81863c9272d61295c8d08d93b15f53144840db620045aa5232075bb` |
| 003 | `2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551` | `046c8b2ef34d4e749556b11d1ce056457f3d84feffe4e63a9b9d528c3a2a2527` |
| 004 | `6b2073b568dc2f94ffa871256831a26a2f2b6772b980b1c2207fd679ddde7922` | `287df7342183d926bcb1c665cd60878f162859396e0143e3e9fd3268869ee471` |
| 005 | `db087ef40c797ff7429828fda26c3bafa05ec43d714c0b94318282e1b9da35fd` | `dd2b09855813b7d769bcee5bbb11b174ba8e8fd91e499515940c68091e2499be` |
| 006 | `ea92dd21a1780968e93c54c6078fefa05404e117a45f255d9747ce2d6da0f34b` | `c1ac10f07c01cd32a005ddce367a168fc4361a2524a017e90f90a00589e5ce21` |
| 007 | `67447235b30c97cb32359a421ff0e2ff040d889f5c1f350cf0dea5c0c576be7e` | `56f5685e8e9e03c8e8a5a9dda8c0d32fcc0a3e0b6298be7d33c214437ae82c19` |
| 008 | `66f86d6502be0f36ee604c298272af92f3baa210120efb356a45da05fe3032d1` | `2cd27659b43be48576665774753c34efa67f2e968c176350867670d90de87b21` |
| 009 | `a4b6fb97f55259816c35a8fe7e48b7bd5ef2b822c706acc50b086ba27e972761` | `664aae39e12238e0929b3ecac0e058070a5b09cb3375a0f6bdd6f2cc50ed6a6f` |
| 010 | `0e5a33ae48c86f832c42f0de46d2956550ba92ce8cf322afaf35783bdcb91024` | `9e6e6f07bfe64756c3c2af3c2fcb5deaa88914eb5dda5aca2ef90492229682b9` |
| 011 | `261a9f185e507aa82a022051791ca90bf29faf473440d54920e1632433219ed0` | `9dbaa42776c3f3c91b8172d6564261627673fd75bd854542e810084efb8ad1af` |
| 012 | `e0d860a0172c8926ee8fb049fa4b0241f3345ef1e848f936819fa792b6b7d78e` | `0bd8442d48d0c1307391d74139179d3c72100443b3ef346e3b03fb022fbc9789` |
| 013 | `7c1046fb3ff7abf95be341b05d02c6f0a2473e98bd879efb6d9ee645d8abe5e5` | `f7c9d109a2f4ccc9bdb2508a9ceca65c2cc6b42a192ecbf957ecbf0e746acd94` |

The appendix contains one subsection for each step, 56 translated public
lemma/proposition blocks, all 13 target-step compositions inside proof
environments, and the full local-derivation and target-assembly mathematical
content. The final theorem composition is also inside a proof environment.
The static event bridge is stated as
Proposition~`prop:step-001-geometry`; all later cross-step dependencies use
named theorem-style labels.

## Claim And Contracts

The assembled theorem is the exact conditional target: one once-drawn event
at probability `1-delta_sm`, conditional proposal/restart confidence
`1-delta_init`, rank `U(r)=Theta(r^(5/3)(log r)^(5/2))`, the explicit
window mass, frozen synchronized landing, exact target-span entry, cyclic
contraction, original Frobenius stopping criterion, polynomial runtime, and
the exact orthogonal equal-weight zero-residual baseline.  No generated event,
basin, reserve, comparator, or condition number is promoted to a primitive
assumption.  Public rates state their exposed variables, probability mode,
horizon, norm, and hidden-constant dependence.

## Verification

- Internal labels: 85 unique labels in the bundle; no duplicate labels, and all `ref`/`pageref` targets resolve.
- External citations: `Uschmajew2012` is cited with a matching BibTeX entry.
- Appendix source-length diagnostic: 4,327 source lines under local derivation/target assembly versus 4,843 appendix lines; no substantive derivation was shortened to a representative summary.
- Bundle line counts (`1_intro`, `2_preliminary`, `3_main`, `4_proof_sketch`, `5_appendix`, `main`): 154, 118, 161, 35, 4,843, and 25.
- Public TeX hygiene: no workflow artifact paths, review-status headings, claim/hypothesis/invariant environments, placeholder title, `\\texttt` pseudo-TeX, empty inline-math fragments, malformed bare citation/reference commands, or duplicate labels.
- Structure: lemma/proposition/theorem/corollary/proof/assumption environments balance at 21/35/1/1/70/8 begin-end pairs; 13 step-composition proofs and one final main-theorem proof are present.
- Compilation: the attempt-2 `tectonic` retry again terminated before TeX processing because its macOS system-configuration networking thread panicked (`Attempted to create a NULL object`) and produced no PDF or log. Static delimiter, environment-balance, label/reference, and citation checks passed, but a compilation result is unavailable in this environment.

## Output Hashes

- `1_intro.tex`: `1c7d2fea42cd38621222c3d2af6e4ddf1ce0e112d1b6d82d9952f2aa94534292`
- `2_preliminary.tex`: `8907c0500f9af5c3280c58bbb15a9e59b674ce6d166d9c6512109ced10d73837`
- `3_main.tex`: `38d5978817c3e7beb9dfac5427ac2d48a805907679c2fac2ffab45b0e03e4343`
- `4_proof_sketch.tex`: `b8235c018a47c1e0528a540ebc54a59c64f503129e667b121962ee22ee017279`
- `5_appendix.tex`: `09a7005b59e390e1c3aa86671e64f1d7d89dac78ec3c9a72db455c50b595fbbe`
- `main.tex`: `5ff5df773bead89ced16a22e8992684af8b74138f2336cb05cfd13127f1e0e60`
- `arxiv.sty`: `e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42`
- `ims.bst`: `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`
- `reference.bib`: `90d1d643ebc5ca062ead09c8ab09fbe85fee42c8856c03c4df022f3b5cbcb081`
