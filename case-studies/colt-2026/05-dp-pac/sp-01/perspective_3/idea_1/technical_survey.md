# Technical Survey

## Current Idea Branch

- Perspective: `perspective_3`, unrestricted approximate-DP PAC lower bounds beyond the additive VC plus iterated-log Littlestone frontier.
- Current idea: `idea_1`, a tagged product of \(k\) threshold classes with an algorithm-independent finite one-block hard prior and a hidden-coordinate simulation.
- Setting / goal summary: For
  
  \[
  C_{k,N}=\{(i,x)\mapsto \mathbf 1\{x\ge t_i\}:\boldsymbol t\in[N+1]^k\},
  \]
  
  prove, for unrestricted randomized and improper learners under replacement-adjacency central approximate DP, the fixed-size implication \(n\ge a k\log_2^*N\) under the exact candidate-\(\delta\) conjunction in `setting.md`. The tower specialization must give \(\Omega(r^2)\), while the one-block prior, minimax bridge, decoder/restriction, exchangeability, overflow control, privacy coupling, and fixed-instance extraction are all proof outputs.

## Candidate Frameworks

### Framework 1: Unrestricted threshold lower bound, finite minimax, and hidden-coordinate simulation

- Source papers: Noga Alon, Roi Livni, Maryanthe Malliaris, and Shay Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949v3 (STOC 2019), especially Section 2, the theorem titled “Thresholds are not privately learnable” (source label `thm:main`), together with the PAC and privacy definitions in Section 3; Sion, *On general minimax theorems*, Pacific Journal of Mathematics 8 (1958), 171–176, DOI:10.2140/pjm.1958.8.171, as a backup reference for the compact minimax equality. The planned proof will give the needed finite-dimensional minimax/separation argument in current notation rather than cite it as a black box.
- Applicability to current branch: The Alon–Livni–Malliaris–Moran theorem has exactly the crucial unrestricted interface: finite ordered domain, arbitrary realizable distributions, randomized possibly improper hypotheses, replacement adjacency, accuracy and failure \(1/16\), privacy \(\varepsilon=0.1\), and \(\delta=O(1/(m^2\log m))\), with conclusion \(m=\Omega(\log^*\lvert X\rvert)\). It supplies no product theorem, so the adaptation burden is precisely the finite hard-prior and one-use hidden-coordinate reduction developed in this branch.
- Proof roadmap:
  1. Preflight the cited theorem and translate its \(\{\pm1\}\) convention and threshold orientation to \(T_N\subseteq\{0,1\}^{[N]}\), preserving arbitrary improper outputs and replacement adjacency.
  2. In the hard regime \(m<b_*\log_2^*N\), turn failure of \((1/16,1/16)\)-PAC accuracy into a one-block expected-risk game value exceeding \(1/256\).
  3. Prove compactness of the finite randomized-kernel DP strategy polytope, continuity in \(Q\in\Delta([N])\), minimax equality, and finite support by a coefficient-vector/Caratheodory argument, producing \(\mu_{N,m}\) before the simulated learner is chosen.
  4. Draw all \(k\) one-block instances i.i.d. from \(\mu_{N,m}\), hide the input task at \(J\sim\mathrm{Unif}[k]\), and use only \(h(J,\cdot)\) from the arbitrary product learner output.
  5. Generate global tags first, consume each input record at most once, abort to a fixed hypothesis on overflow, prove a uniform factorial-moment overflow bound, and prove pathwise replacement-adjacency preservation.
  6. Couple the executable simulation to an ideal i.i.d. product sample, use exchangeability to identify selected-block risk with average product risk, extract a fixed product instance, and calibrate the source constants and tower specialization.
- Key lemmas / ingredients: source theorem preflight; high-probability-to-expected-loss contrapositive; compact randomized-kernel DP polytope; finite-dimensional minimax and Caratheodory finite support; exact restriction \(D_Jh=h(J,\cdot)\); binomial factorial-moment tails; one-record-to-one-row preprocessing; postprocessing and mixtures of DP kernels; deterministic risk identity \(R_{P_{\boldsymbol Q}}=(1/k)\sum_i R_{Q_i}\); fixed-instance extraction.
- Main transfer challenges: The source theorem does not output a hard distribution or prior; a prior chosen after seeing the simulated learner would be circular. The simulator knows neither the hidden threshold nor its distribution and therefore cannot synthesize extra hidden examples after exhausting its input. Conditioning on no overflow cannot be used as a privacy shortcut. Finally, a product learner may be asymmetric across tags and output a completely nonmonotone hypothesis, so neither tag symmetry nor a proper decoder may be assumed.
- Potential repair techniques and supporting references:
  - Technique: Reduce the compact instance family to finite payoff coefficient vectors, apply finite-dimensional minimax/separation, and represent the optimizing coefficient by finite support.
  - Supporting reference: Sion (1958), DOI:10.2140/pjm.1958.8.171; Caratheodory's finite-dimensional convex-hull theorem.
  - Why it may help: It produces a public prior hard for every DP randomized kernel, including a simulator whose code itself uses that prior, eliminating the apparent circularity.
  - Technique: Abort before calling the product learner whenever the hidden-tag count exceeds the input budget.
  - Supporting reference: The binomial falling-factorial identity \(\mathbb E[(U)_r]=(n)_r k^{-r}\), proved directly in the planned step.
  - Why it may help: The abort branch is input-independent, while the nonoverflow branch uses each row once. This simultaneously gives exact replacement coupling and an ideal/actual loss comparison with only an additive overflow probability.
- Disposition: `selected`
- Branch notes: This framework follows the first parent foundation paper exactly at the one-block hard core. The second named parent, Cohen et al. (Framework 3), remains relevant background for optimal threshold upper bounds but its generic quasi-concave lower bound has no unrestricted classification-risk decoder. The selected route therefore changes parents only after the cited one-block theorem, using direct finite-dimensional probability and privacy arguments rather than importing a different task lower bound.

#### Selected-Source Preflight

- Source identity and stable locator: Alon, Livni, Malliaris, and Moran, arXiv:1806.00949v3, Section 2, theorem titled “Thresholds are not privately learnable,” source label `thm:main`; definitions of PAC accuracy and DP are in Section 3 of the same version.
- Exact source interface used: If \(X\subset\mathbb R\) is finite, \(\lvert X\rvert=N\), and a randomized learner with exactly \(m\) i.i.d. examples is \((1/16,1/16)\)-accurate for every threshold-realizable distribution, is \((0.1,\delta)\)-DP for datasets differing in one example, and \(\delta\le d_*/(m^2\log m)\) for the absolute constant hidden by the theorem's \(O(\cdot)\), then \(m\ge b_*\log^*N\) above an absolute source threshold \(N_*\). The theorem itself states the \(O/\Omega\) form and does not provide numerical \(b_*,d_*,N_*\).
- Current-object mapping: Order-isomorphically identify \(X\) with \([N]\); relabel \(-1,+1\) as \(0,1\); reverse the order or complement labels if needed to match \(\tau_t(x)=\mathbf1\{x\ge t\}\). The resulting source threshold family is a subclass of \(T_N=\{\tau_t:t\in[N+1]\}\), so a learner for all of \(T_N\) learns the source family. A source hypothesis is arbitrary in \(\{0,1\}^{[N]}\), exactly the branch's one-block improper output space.
- Hypothesis discharge planned: The contradiction regime will prove \(m_{n,k}<b_*\log_2^*N\); choose \(\varepsilon_0\le0.1\); choose \(c_\delta\le d_*\); and use \(m_{n,k}\ge8\) plus
  
  \[
  \delta\le \frac{c_\delta}{m_{n,k}^2\log(m_{n,k}+1)}
  \le \frac{d_*}{m_{n,k}^2\log m_{n,k}}.
  \]
  
  The additional candidate condition \(\delta\le1/(n\log(n+1))\) preserves the open-problem regime but is not falsely credited with discharging the one-block theorem.
- Source-convention compatibility: Both source and branch use fixed-size i.i.d. realizable PAC samples, population 0-1 loss, randomized learners, arbitrary hypotheses, and central replacement adjacency. Base choices for \(\log^*\) alter only absolute constants; the branch fixes base two. “Differ in one example” and “differ in at most one row” yield the same DP obligation after adding the equality case.
- Known non-outputs and boundaries: The cited theorem supplies no algorithm-independent hard \((Q,t)\), no hard prior, no expected-loss minimax statement, no finite-support conclusion, no product/tensorization theorem, no decoder, no exchangeability identity, no overflow estimate, and no preprocessing coupling. It is fixed at \(\varepsilon=0.1\) and the displayed small-\(\delta\) order, and its theorem statement leaves numerical asymptotic constants implicit. It does not require proper output. Endpoint thresholds are not needed for the lower bound; adding the all-zero/all-one endpoints in \(T_N\) only enlarges the target class.

### Framework 2: Direct finite discretization and linear-program duality

- Source papers: Alon, Livni, Malliaris, and Moran, arXiv:1806.00949v3; explicit prior artifact path: none, because this is a prospective current-branch derivation.
- Applicability to current branch: One could discretize the distribution simplex finely enough that every degree-\((m+1)\) loss polynomial is uniformly approximated, obtain a finite zero-sum game, and take its LP-dual hard prior. This stays within the same one-block source and may be useful if a reviewer rejects the compact-measure presentation.
- Proof roadmap:
  1. Establish a common modulus of continuity for all DP-kernel loss polynomials on the compact simplex.
  2. Choose a finite \(Q\)-net fine enough to preserve a strict source-derived game gap.
  3. Apply finite matrix-game duality and carry the approximation slack through the product reduction.
- Key lemmas / ingredients: uniform polynomial continuity, finite nets of a simplex, finite von Neumann minimax, explicit slack accounting.
- Main transfer challenges: The source theorem exposes no quantitative strict gap beyond \(1/256\), so the net radius would depend nonconstructively on \((N,m)\); this creates extra bookkeeping without improving the final rate.
- Potential repair techniques and supporting references:
  - Technique: Use compactness to obtain a positive strict gap first, then choose the net.
  - Supporting reference: finite-dimensional Heine–Cantor uniform continuity and von Neumann minimax.
  - Why it may help: It avoids probability measures on a compact continuum, at the price of an unnecessary approximation layer.
- Disposition: `backup`
- Branch notes: This is not selected because the coefficient-vector/Caratheodory route in Framework 1 obtains an exactly finite prior with no discretization defect.

### Framework 3: Generic quasi-concave optimization lower bound as a classification decoder

- Source papers: Edith Cohen, Xin Lyu, Jelani Nelson, Tamás Sarlós, and Uri Stemmer, *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization*, DOI:10.1145/3564246.3585148 (STOC 2023); Bun, Nissim, Stemmer, and Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553.
- Applicability to current branch: The \(2^{\log^*N}\)-scale generic quasi-concave lower bound is superficially attractive for a stronger product separation, and interior point is the historical threshold hard core. However, realizable classification risk for an arbitrary nonmonotone improper hypothesis does not output an optimizer/interior point, while the older multidimensional threshold lower bound is proper-only.
- Proof roadmap:
  1. Attempt to decode an optimizer or cut from arbitrary \(h\in\{0,1\}^{[k]\times[N]}\).
  2. Transfer classification risk to optimizer utility without a distributional promise.
  3. Preserve one-record adjacency through the decoder.
- Key lemmas / ingredients: a risk-to-optimizer decoder would be required, but neither cited source supplies one for arbitrary improper PAC outputs.
- Main transfer challenges: Population error permits highly nonmonotone behavior off the hard distribution's support; hence no supported optimizer location, threshold parameter, or interior point can be extracted. Assuming such a decoder is exactly the missing theorem.
- Potential repair techniques and supporting references:
  - Technique: Restrict to the evaluation \(h(J,\cdot)\) and measure only its population loss, without decoding a parameter.
  - Supporting reference: Alon et al., arXiv:1806.00949v3, whose threshold lower bound already covers improper outputs.
  - Why it may help: This returns to Framework 1 and preserves the unrestricted theorem contract.
- Disposition: `rejected`
- Branch notes: The rejection is theorem-contract based, not merely technical. Adding properness or an optimizer-output promise would change the approved setting.
